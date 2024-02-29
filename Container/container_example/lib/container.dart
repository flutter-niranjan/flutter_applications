import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container",
            style: TextStyle(
              fontSize: 25,
              color: Colors.orange,
              fontWeight: FontWeight.w800,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
                child: Text("Container"),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              const SizedBox(
                height: 25,
                child: Text("padding"),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Image.network(
                    "https://static-cse.canva.com/blob/825910/ComposeStunningImages6.jpg"),
              ),
              const SizedBox(
                height: 25,
                child: Text("margin"),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                margin: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 10,
                ),
                child: Image.network(
                    "https://static-cse.canva.com/blob/825910/ComposeStunningImages6.jpg"),
              ),
              const SizedBox(
                height: 25,
                child: Text("Border"),
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.yellow,
                    width: 5,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
                child: Text("Border Radius"),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
                child: Text("Border Radius"),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
                child: Text("Box Shadow"),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.purple,
                      offset: Offset(30, 30),
                      blurRadius: 8,
                    ),
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(20, 20),
                      blurRadius: 8,
                    ),
                    BoxShadow(
                      color: Colors.green,
                      offset: Offset(10, 10),
                      blurRadius: 8,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
                child: Text("Gradient"),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,
                  ),
                  gradient: const LinearGradient(
                    stops: [0.3, 0.5],
                    colors: [Colors.red, Colors.green],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
