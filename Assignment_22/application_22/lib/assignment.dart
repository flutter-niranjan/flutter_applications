import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State createState() => _Assignment();
}

class _Assignment extends State<Assignment> {
  List countList = [];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Count ListView"),
      ),
      body: ListView.builder(
        itemCount: countList.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            child: Text('${countList[index]}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            countList.add(count);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
