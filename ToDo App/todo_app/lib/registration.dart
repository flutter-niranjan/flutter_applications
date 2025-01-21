

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:textfield_shadow/custom_textfield.dart';
import 'package:textfield_shadow/textfield_shadow.dart';
// import 'package:intl/intl.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State createState() => _RegistrationState();
}

class _RegistrationState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 58.82,
              width: 69.76,
              margin: const EdgeInsets.only(
                top: 86,
                left: 145,
              ),
              child: Image.asset("Asset/wallet.png"),
            ),
            Container(
              height: 410,
              width: 280,
              // color: Colors.red,
              margin: const EdgeInsets.only(
                top: 50,
                left: 40,
              ),
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create your Account",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //         color: Color.fromRGBO(0, 0, 0, 0.4),
                  //         width: 10,
                  //         style: BorderStyle.none,
                  //         strokeAlign: BorderSide.strokeAlignOutside,
                  //       ),
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //     labelText: "Name",
                  //     labelStyle: TextStyle(
                  //       fontFamily: "Poppins",
                  //       fontSize: 12,
                  //     ),
                  //   ),
                  // )
                  const CustomTextfield(
                    hintStr: "  Name",
                    hintStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    size: Size(1, 1),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomTextfield(
                    hintStr: "  Username",
                    hintStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    size: Size(1, 1),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomTextfield(
                    hintStr: "  Password",
                    hintStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    size: Size(1, 1),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomTextfield(
                    hintStr: "  Confirm Password",
                    hintStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    size: Size(1, 1),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(500, 49),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return SignIn();
                      }));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            // const Spacer(),
            Container(
                width: 220,
                height: 18,
                margin: const EdgeInsets.only(
                  top: 118,
                  left: 75,
                ),
                child: Row(
                  children: [
                    const Text("Already have an account?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return SignIn();
                        }));
                      },
                      child: Text(
                        " Sign In",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.green,
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
