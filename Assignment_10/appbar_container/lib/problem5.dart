import 'package:flutter/material.dart';

class Problem5 extends StatelessWidget {
  const Problem5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.network(
                  "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  height: 150,
                  width: 150,
                ),
                height: 150,
                width: 150,
              ),
              Container(
                child: Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",height: 150,width: 150,),
                height: 150,
                width: 150,
              )
            ],
          )
        ],
      ),
    );
  }
}
