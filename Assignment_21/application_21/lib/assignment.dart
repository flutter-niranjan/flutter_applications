import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State createState() => _Assignment();
}

class _Assignment extends State<Assignment> {
  List<String> imgList = [
    "https://tse2.mm.bing.net/th?id=OIP.Pf2p3qw7OLntwU0Ld4tWewHaFj&pid=Api&P=0&h=180",
   "https://tse1.mm.bing.net/th?id=OIP.YAXlTjvtEKchdMVc5laZhwHaE8&pid=Api&P=0&h=180", 
   "https://tse2.mm.bing.net/th?id=OIP.iAhcp6m_91O-ClK79h8EQQHaFj&pid=Api&P=0&h=180"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Image ListView Demo"),
      ),
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(imgList[index]),
          );
        },
      ),
    );
  }
}
