import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State {
  List imgList = [
    "https://static.tnn.in/thumb/msid-108420897,thumbsize-54810,width-1280,height-720,resizemode-75/108420897.jpg"
        "https://static.tnn.in/thumb/msid-108420897,thumbsize-54810,width-1280,height-720,resizemode-75/108420897.jpg"
        "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202403/virat-kohli-121328420-16x9_0.jpg?VersionId=zXp2p2odXgKZ_9lptrypzjjA9F6wf75M&size=690:388"
        "https://static.tnn.in/thumb/msid-108420897,thumbsize-54810,width-1280,height-720,resizemode-75/108420897.jpg"
        "https://static.tnn.in/thumb/msid-108420897,thumbsize-54810,width-1280,height-720,resizemode-75/108420897.jpg"
        "https://static.tnn.in/thumb/msid-108420897,thumbsize-54810,width-1280,height-720,resizemode-75/108420897.jpg"
        "https://static.tnn.in/thumb/msid-108420897,thumbsize-54810,width-1280,height-720,resizemode-75/108420897.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListViewDemo"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.all(10),
              child: Image.network(imgList[index]),
            );
          },
        ));
  }
}
