import 'package:advquiz/subjectpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset("Asset/image 1.png"),
          Stack(
            children: [
              Image.asset(
                "Asset/image 1.png",
                fit: BoxFit.cover,
              ),
              Positioned(
                  bottom: 200,
                  right: 55,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const SubjectPage();
                      }));
                    },
                    icon: Image.asset("Asset/Logo.png"),
                  ))
            ],
          ),
          Image.asset("Asset/image 1.png"),
        ],
      ),
    );
  }
}
