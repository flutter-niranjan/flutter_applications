import 'package:flutter/material.dart';

class Assignment11 extends StatelessWidget {
  const Assignment11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding & Margin"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            child: 
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxpfLZY2r7TYZz09WjquBQ_DgwfSaHOT-o3Q&usqp=CAU")
          ),
        ),
      ),
    );
  }
}
