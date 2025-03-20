import 'package:fiancial_app/database_helper.dart';
import 'package:fiancial_app/model.dart' as modelClass;
import 'package:fiancial_app/transaction_list_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardProvider with ChangeNotifier {
  double totalIncome = 0.0;
  double totalExpense = 0.0;
  double netBalance = 0.0;

  Future<void> calculateSummary() async {
    List<modelClass.Transaction> transactions =
        await DatabaseHelper.instance.fetchTransactions();

    totalIncome = transactions
        .where((t) => t.type == "Income")
        .fold(0.0, (sum, item) => sum + item.amount);

    totalExpense = transactions
        .where((t) => t.type == "Expense")
        .fold(0.0, (sum, item) => sum + item.amount);

    netBalance = totalIncome - totalExpense;

    categoryExpenses.clear();
    for (var transaction in transactions.where((t) => t.type == "Expense")) {
      categoryExpenses[transaction.category] =
          (categoryExpenses[transaction.category] ?? 0) + transaction.amount;
    }

    notifyListeners();
  }

  Map<String, double> categoryExpenses = {
    "Groceries": 800,
    "Rent": 1200,
    "Entertainment": 600,
    "Transport": 400,
  };

  void updateData(double income, double expense) {
    totalIncome = income;
    totalExpense = expense;
    notifyListeners();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<DashboardProvider>(context, listen: false).calculateSummary();
    });
  }

  @override
  Widget build(BuildContext context) {
    final financialData = Provider.of<DashboardProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Dashboard", style: GoogleFonts.poppins(fontSize: 22)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 81, 81),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    totalExpense(
                      "Total Income",
                      "\Rs ${financialData.totalIncome}",
                      Colors.green,
                    ),
                    totalExpense(
                      "Total Expenses",
                      "\Rs ${financialData.totalExpense}",
                      Colors.red,
                    ),
                    Divider(),
                    totalExpense(
                      "Net Balance",
                      "\Rs ${financialData.netBalance}",
                      Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Overall Expendeture",
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: PieChart(
                PieChartData(
                  sections:
                      financialData.categoryExpenses.entries.map((entry) {
                        return PieChartSectionData(
                          value: entry.value,
                          title: entry.key,
                          color: _categoryColor(entry.key),
                          radius: 70,
                        );
                      }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransactionListScreen()),
          );
          Provider.of<DashboardProvider>(
            context,
            listen: false,
          ).calculateSummary();
        },
        backgroundColor: const Color.fromARGB(255, 255, 81, 81),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget totalExpense(String title, String value, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }

  Color _categoryColor(String category) {
    switch (category) {
      case "Groceries":
        return Colors.green;
      case "Rent":
        return Colors.blue;
      case "Entertainment":
        return Colors.purple;
      case "Transport":
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}
