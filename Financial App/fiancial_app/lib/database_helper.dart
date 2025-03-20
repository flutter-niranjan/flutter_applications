import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:fiancial_app/model.dart' as modelClass;

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB("transactions.db");
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE transactions(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      amount REAL NOT NULL,
      type TEXT NOT NULL,
      category TEXT NOT NULL,
      date TEXT NOT NULL
    ) 
''');
  }

  Future<int> insertTransaction(modelClass.Transaction transaction) async {
  final db = await database;
  try {
    return await db.insert('transactions', transaction.toMap());
  } catch (e) {
    print("Error inserting transaction: $e");
    return -1;
  }
}

Future<void> deleteDatabaseManually() async {
  final dbPath = await getDatabasesPath();
  final path = join(dbPath, "transactions.db");
  await deleteDatabase(path);
  print("Database deleted!");
}

  Future<List<modelClass.Transaction>> fetchTransactions() async {
    final db = await database;
    final result = await db.query('transactions', orderBy: 'date DESC');
    return result.map((json) => modelClass.Transaction.fromMap(json)).toList();
  }

  Future<int> updateTransaction(modelClass.Transaction transaction) async {
    final db = await database;
    return await db.update(
      'transactions',
      transaction.toMap(),
      where: 'id = ?',
      whereArgs: [transaction.id],
    );
  }

  Future<int> deleteTransaction(int id) async {
    final db = await database;
    return await db.delete('transactions', where: 'id = ?', whereArgs: [id]);
  }
}
