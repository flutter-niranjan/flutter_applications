import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State createState() => _TransactionState();
}

class _TransactionState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 35,
                    left: 11,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 35,
                    left: 10,
                  ),
                  child: Text(
                    "June 2022",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(
                    top: 35,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                )
              ],
            ),
            Container(
              width: 361.5,
              margin: const EdgeInsets.only(
                top: 15,
              ),
              height: 1,
              color: Color.fromRGBO(206, 206, 206, 1),
            ),
            Row(
              children: [
                Container(
                  height: 41,
                  width: 41,
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 12,
                  ),
                  child: Image.asset("Asset/Medicin.png"),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Medicine",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the",
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Image.asset("Asset/Subtract.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: Text(
                    "500",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 361.5,
              margin: const EdgeInsets.only(
                top: 15,
              ),
              height: 1,
              color: Color.fromRGBO(206, 206, 206, 1),
            ),
            Row(
              children: [
                Container(
                  height: 41,
                  width: 41,
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 12,
                  ),
                  child: Image.asset("Asset/Medicin.png"),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Medicine",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the",
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Image.asset("Asset/Subtract.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: Text(
                    "500",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 361.5,
              margin: const EdgeInsets.only(
                top: 15,
              ),
              height: 1,
              color: Color.fromRGBO(206, 206, 206, 1),
            ),
            Row(
              children: [
                Container(
                  height: 41,
                  width: 41,
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 12,
                  ),
                  child: Image.asset("Asset/Medicin.png"),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Medicine",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the",
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Image.asset("Asset/Subtract.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: Text(
                    "500",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 361.5,
              margin: const EdgeInsets.only(
                top: 15,
              ),
              height: 1,
              color: Color.fromRGBO(206, 206, 206, 1),
            ),
            Row(
              children: [
                Container(
                  height: 41,
                  width: 41,
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 12,
                  ),
                  child: Image.asset("Asset/Medicin.png"),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Medicine",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the",
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Image.asset("Asset/Subtract.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: Text(
                    "500",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 361.5,
              margin: const EdgeInsets.only(
                top: 15,
              ),
              height: 1,
              color: Color.fromRGBO(206, 206, 206, 1),
            ),
            Row(
              children: [
                Container(
                  height: 41,
                  width: 41,
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 12,
                  ),
                  child: Image.asset("Asset/Medicin.png"),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Medicine",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the",
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Image.asset("Asset/Subtract.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: Text(
                    "500",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 361.5,
              margin: const EdgeInsets.only(
                top: 15,
              ),
              height: 1,
              color: Color.fromRGBO(206, 206, 206, 1),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 230,
                left: 97,
              ),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                ),
                label: Text("Add Transaction"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
