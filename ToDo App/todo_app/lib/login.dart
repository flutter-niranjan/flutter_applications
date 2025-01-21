import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/new_to_do.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _LoginState();
}

class _LoginState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Builder(builder: (context) {
          return Container(
            height: double.infinity,
            width: double.infinity,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 42,
                    top: 205,
                  ),
                  child: Text(
                    "Login To Your Account",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  width: 280,
                  height: 49,
                  margin: const EdgeInsets.only(
                    left: 42,
                    top: 25,
                  ),
                  // decoration: BoxDecoration(boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 5,
                  //     blurRadius: 8,
                  //     offset: const Offset(0, 3),
                  //   )
                  // ]),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        labelText: "Username"),
                  ),
                ),
                Container(
                  width: 280,
                  height: 49,
                  margin: const EdgeInsets.only(
                    left: 42,
                    top: 25,
                  ),
                  // decoration: BoxDecoration(boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 5,
                  //     blurRadius: 8,
                  //     offset: const Offset(0, 3),
                  //   )
                  // ]),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        labelText: "Password"),
                  ),
                ),
                Container(
                  height: 49,
                  width: 280,
                  margin: const EdgeInsets.only(
                    left: 42,
                    top: 25,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      ToDoApp();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(14, 161, 125, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 300,
                  ),
                  child: const Spacer(),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 85,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const ToDoApp();
                          }));
                        },
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(14, 161, 125, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }));
  }
}
