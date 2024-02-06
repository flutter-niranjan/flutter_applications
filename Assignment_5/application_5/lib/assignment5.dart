import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});
  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  bool box1Color = false;
  bool box2Color = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Box"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //box1
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box1Color ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //box1 button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box1Color = !box1Color;
                      });
                    },
                    child: const Text("Color Box1"),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              //box2
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box2Color ? Colors.blue : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //Box2 Button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box2Color = !box2Color;
                      });
                    },
                    child: const Text("Color Box 2"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}



// class _AssignmentState extends State<Assignment> {
//   bool Box1Color = false;
//   bool Box2Color = false;

//   Color setBox1Color() {
//     if (Box1Color == false) {
//       return Colors.red;
//     } else {
//       return Colors.black;
//     }
//   }

//   Color setBox2Color() {
//     if (Box2Color == false) {
//       return Colors.black;
//     } else {
//       return Colors.red;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Color Box"),
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: setBox1Color(),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       if (Box1Color == false) {
//                         Box1Color = true;
//                       } else {
//                         Box1Color = false;
//                       }
//                     });
//                   },
//                   child: const Text("Button1")),
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: setBox2Color(),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       if (Box2Color == false) {
//                         Box2Color = true;
//                       } else {
//                         Box2Color = false;
//                       }
//                     });
//                   },
//                   child: const Text("Button2")),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
