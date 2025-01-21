import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SubjectPage extends StatefulWidget {
  const SubjectPage({super.key});
  @override
  State createState() => _SubjectPageState();
}

class _SubjectPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 59,
                left: 27,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Niranjan,",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: const Color.fromRGBO(131, 76, 52, 1)),
                        ),
                        Text(
                          "Great to see you again!",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color.fromRGBO(131, 76, 52, 1)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 64,
                    height: 64,
                    margin: const EdgeInsets.only(
                      right: 30,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(250, 188, 154, 1),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 80,
                width: 306,
                margin: const EdgeInsets.only(
                  left: 27,
                  top: 40,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(255, 237, 217, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      margin: const EdgeInsets.only(
                        left: 22,
                        top: 18,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 13,
                          top: 8,
                        ),
                        child: Text(
                          "M",
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(200, 60, 0, 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                        top: 26,
                      ),
                      child: Text(
                        "Math",
                        style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(131, 76, 52, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 130,
                        top: 26,
                      ),
                      child: const Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 80,
                width: 306,
                margin: const EdgeInsets.only(
                  left: 27,
                  top: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(255, 237, 217, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      margin: const EdgeInsets.only(
                        left: 22,
                        top: 18,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 13,
                          top: 8,
                        ),
                        child: Text(
                          "H",
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 157, 66, 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                        top: 26,
                      ),
                      child: Text(
                        "History",
                        style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(131, 76, 52, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 108,
                        top: 26,
                      ),
                      child:const Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 80,
                width: 306,
                margin:const EdgeInsets.only(
                  left: 27,
                  top: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:const Color.fromRGBO(255, 237, 217, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      margin: const EdgeInsets.only(
                        left: 22,
                        top: 18,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color:const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Container(
                        margin:const EdgeInsets.only(
                          left: 13,
                          top: 8,
                        ),
                        child: Text(
                          "G",
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color:const Color.fromRGBO(3, 163, 134, 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                        top: 26,
                      ),
                      child: Text(
                        "Geography",
                        style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color:const Color.fromRGBO(131, 76, 52, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 70,
                        top: 26,
                      ),
                      child: const Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 80,
                width: 306,
                margin:const EdgeInsets.only(
                  left: 27,
                  top: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:const Color.fromRGBO(255, 237, 217, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      margin:const EdgeInsets.only(
                        left: 22,
                        top: 18,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color:const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Container(
                        margin:const EdgeInsets.only(
                          left: 13,
                          top: 8,
                        ),
                        child: Text(
                          "B",
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color:const Color.fromRGBO(251, 43, 255, 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(
                        left: 15,
                        top: 26,
                      ),
                      child: Text(
                        "Biology",
                        style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color:const Color.fromRGBO(131, 76, 52, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(
                        left: 108,
                        top: 26,
                      ),
                      child:const Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 80,
                width: 306,
                margin: const EdgeInsets.only(
                  left: 27,
                  top: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:const Color.fromRGBO(255, 237, 217, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      margin: const EdgeInsets.only(
                        left: 22,
                        top: 18,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color:const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Container(
                        margin:const EdgeInsets.only(
                          left: 13,
                          top: 8,
                        ),
                        child: Text(
                          "S",
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color:const Color.fromRGBO(45, 104, 255, 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                        top: 26,
                      ),
                      child: Text(
                        "Sports",
                        style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color:const Color.fromRGBO(131, 76, 52, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 115,
                        top: 26,
                      ),
                      child:const Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
