import 'package:fiancial_app/database_helper.dart';
import 'package:fiancial_app/home_screen.dart';
import 'package:fiancial_app/model.dart' as modelClass;
import 'package:fiancial_app/transaction_add_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TransactionListScreen extends StatefulWidget {
  const TransactionListScreen({super.key});

  @override
  State createState() => _TransactionListScreenState();
}

class TransactionListProvider with ChangeNotifier {
  List<modelClass.Transaction> _transaction = [];
  List<modelClass.Transaction> get transaction => _transaction;

  Future<void> loadTransactions() async {
    _transaction = await DatabaseHelper.instance.fetchTransactions();
    notifyListeners();
  }

  Future<void> deleteTransaction(int id) async {
    await DatabaseHelper.instance.deleteTransaction(id);
    _transaction.removeWhere((t) => t.id == id);
    notifyListeners();
  }
}

class _TransactionListScreenState extends State {
  String _selectedFilter = "All";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<TransactionListProvider>(
      context,
      listen: false,
    ).loadTransactions();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Provider.of<TransactionListProvider>(
      context,
      listen: false,
    ).loadTransactions();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TransactionListProvider>(context);
    List<modelClass.Transaction> filteredTransactions =
        provider.transaction.where((transaction) {
          if (_selectedFilter == "All") {
            return true;
          } else {
            return transaction.type == _selectedFilter;
          }
        }).toList();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Transactions",
          style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 81, 81),
        leading: IconButton(
          onPressed: () {
            Provider.of<DashboardProvider>(
              context,
              listen: false,
            ).calculateSummary();
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _filterButton("All"),
              SizedBox(width: 10),
              _filterButton("Income"),
              SizedBox(width: 10),
              _filterButton("Expense"),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child:
                filteredTransactions.isEmpty
                    ? Center(child: Text("No Transactions available"))
                    : ListView.builder(
                      itemCount: filteredTransactions.length,
                      itemBuilder: (context, index) {
                        final transaction = filteredTransactions[index];
                        return Dismissible(
                          key: Key(transaction.id.toString()),
                          direction: DismissDirection.endToStart,
                          background: Container(
                            color: Colors.red,
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(Icons.delete, color: Colors.white),
                          ),
                          onDismissed: (direction) async {
                            final transactionId = transaction.id!;

                            setState(() {
                              provider.transaction.removeWhere(
                                (t) => t.id == transactionId,
                              );
                            });

                            await Provider.of<TransactionListProvider>(
                              context,
                              listen: false,
                            ).deleteTransaction(transactionId);

                            Provider.of<DashboardProvider>(
                              context,
                              listen: false,
                            ).calculateSummary();
                          },

                          child: Card(
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: ListTile(
                              title: Text(transaction.title),
                              subtitle: Text(transaction.category),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "${transaction.amount} Rs",
                                    style: TextStyle(
                                      color:
                                          transaction.type == "Income"
                                              ? Colors.green
                                              : Colors.red,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  IconButton(
                                    icon: Icon(Icons.edit, color: Colors.blue),
                                    onPressed: () {
                                      _editTransaction(context, transaction);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddEditTransactionScreen()),
          );
          Provider.of<TransactionListProvider>(
            context,
            listen: false,
          ).loadTransactions();
          Provider.of<DashboardProvider>(
            context,
            listen: false,
          ).calculateSummary();
        },
        child: Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 255, 81, 81),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _filterButton(String filterType) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedFilter = filterType;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            _selectedFilter == filterType ? Colors.blueAccent : Colors.grey,
      ),
      child: Text(filterType, style: GoogleFonts.poppins(color: Colors.black)),
    );
  }

  void _editTransaction(
    BuildContext context,
    modelClass.Transaction transaction,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => AddEditTransactionScreen(transaction: transaction),
      ),
    ).then((_) {
      Provider.of<TransactionListProvider>(context).loadTransactions();
      Provider.of<DashboardProvider>(context).calculateSummary();
    });
  }
}
