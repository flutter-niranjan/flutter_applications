import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/controller/product_controller.dart';
import 'package:provider_example/view/get_product_details.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext conttext) {
        return ProductController();
      },
      child: MaterialApp(
        title: "Provider Example",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: GetProductDetails(),
      ),
    );
  }
}
