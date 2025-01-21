import 'package:expense_manager/registration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.only(
                top: 330,
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(191, 190, 190, 0.322),
              ),
              child: Image.asset("Asset/wallet.png"),
            ),
            const Spacer(),
            // const SizedBox(
            //   height: 300,
            // ),
            Container(
              margin: const EdgeInsets.only(bottom: 100),
              child: Text(
                "Expense Manager",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Registration();
          }));
        },
        child: Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}
