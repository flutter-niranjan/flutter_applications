import 'package:fiancial_app/database_helper.dart';
import 'package:fiancial_app/model.dart' as modelClass;
import 'package:fiancial_app/transaction_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class AddTranscationProvider with ChangeNotifier {
  Future<void> addTransaction(modelClass.Transaction transcation) async {
    await DatabaseHelper.instance.insertTransaction(transcation);
    notifyListeners();
  }

  Future<void> updateTransaction(modelClass.Transaction transaction) async {
    await DatabaseHelper.instance.updateTransaction(transaction);
    notifyListeners();
  }
}

class AddEditTransactionScreen extends StatefulWidget {
  final modelClass.Transaction? transaction;
  final int? index;

  const AddEditTransactionScreen({this.transaction, this.index, super.key});

  @override
  _AddEditTransactionScreenState createState() =>
      _AddEditTransactionScreenState();
}

class _AddEditTransactionScreenState extends State<AddEditTransactionScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _titleController;
  late TextEditingController _amountController;
  String _selectedType = "Expense";
  String _selectedCategory = "Groceries";
  DateTime _selectedDate = DateTime.now();

  final List<String> _categories = [
    "Groceries",
    "Rent",
    "Salary",
    "Entertainment",
    "Transport",
  ];

  @override
  void initState() {
    super.initState();

    if (widget.transaction != null) {
      _titleController = TextEditingController(text: widget.transaction!.title);
      _amountController = TextEditingController(
        text: widget.transaction!.amount.toString(),
      );
      _selectedType = widget.transaction!.type;
      _selectedCategory = widget.transaction!.category;
      _selectedDate = widget.transaction!.date;
    } else {
      _titleController = TextEditingController();
      _amountController = TextEditingController();
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _saveTransaction() async {
    if (_formKey.currentState!.validate()) {
      final newTransaction = modelClass.Transaction(
        title: _titleController.text,
        amount: double.parse(_amountController.text),
        type: _selectedType,
        category: _selectedCategory,
        date: _selectedDate,
      );

      final provider = Provider.of<AddTranscationProvider>(
        context,
        listen: false,
      );

      if (widget.transaction == null) {
        await provider.addTransaction(newTransaction);
      } else {
        final updateTransaction = modelClass.Transaction(
          id: widget.transaction!.id,
          title: _titleController.text,
          amount: double.parse(_amountController.text),
          type: _selectedType,
          category: _selectedCategory,
          date: _selectedDate,
        );
        await provider.updateTransaction(updateTransaction);
      }
      Provider.of<TransactionListProvider>(
        context,
        listen: false,
      ).loadTransactions();
      Navigator.pop(context);
    }
  }

  void _pickDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.transaction == null ? "Add Transaction" : "Edit Transaction",
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(labelText: "Title"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a title";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _amountController,
                decoration: InputDecoration(labelText: "Amount"),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an amount";
                  }
                  return null;
                },
              ),

              SizedBox(height: 10),
              Text("Transaction Type"),
              Row(
                children: [
                  Radio(
                    value: "Income",
                    groupValue: _selectedType,
                    onChanged: (value) {
                      setState(() {
                        _selectedType = value.toString();
                      });
                    },
                  ),
                  Text("Income"),
                  Radio(
                    value: "Expense",
                    groupValue: _selectedType,
                    onChanged: (value) {
                      setState(() {
                        _selectedType = value.toString();
                      });
                    },
                  ),
                  Text("Expense"),
                ],
              ),

              DropdownButtonFormField<String>(
                value: _selectedCategory,
                items:
                    _categories.map((category) {
                      return DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value!;
                  });
                },
                decoration: InputDecoration(labelText: "Category"),
              ),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Date: ${DateFormat('dd/MM/yyyy').format(_selectedDate)}",
                  ),
                  TextButton(
                    onPressed: () => _pickDate(context),
                    child: Text(
                      "Pick Date",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _saveTransaction,
                  child: Text(
                    widget.transaction == null
                        ? "Add Transaction"
                        : "Save Changes",
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
