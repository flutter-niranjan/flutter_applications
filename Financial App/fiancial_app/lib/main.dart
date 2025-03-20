import 'package:fiancial_app/home_screen.dart';
import 'package:fiancial_app/transaction_add_screen.dart';
import 'package:fiancial_app/transaction_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'database_helper.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DashboardProvider()),
        ChangeNotifierProvider(create: (_) => TransactionListProvider()),
        ChangeNotifierProvider(create: (_) => AddTranscationProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
