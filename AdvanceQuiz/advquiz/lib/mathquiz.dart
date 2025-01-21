import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MathQuiz extends StatefulWidget {
  const MathQuiz({super.key});

  @override
  State createState() => _MathQuizState();
}

class _MathQuizState extends State {
  List<Map> allQuestions = [
    {
      "question":"If David’s age is 27 years old in 2011. What was his age in 2003?",
      "option": ["19 years","37 years","20 years","17 years"],
      "answerIndex": 0,
    },
    {
      "question":"If David’s age is 27 years old in 2011. What was his age in 2003?",
      "option": ["19 years","37 years","20 years","17 years"],
      "answerIndex": 0,
    },
    {
      "question":"If David’s age is 27 years old in 2011. What was his age in 2003?",
      "option": ["19 years","37 years","20 years","17 years"],
      "answerIndex": 0,
    },
    {
      "question":"If David’s age is 27 years old in 2011. What was his age in 2003?",
      "option": ["19 years","37 years","20 years","17 years"],
      "answerIndex": 0,
    },
    {
      "question":"If David’s age is 27 years old in 2011. What was his age in 2003?",
      "option": ["19 years","37 years","20 years","17 years"],
      "answerIndex": 0,
    },
  ];

  bool ques

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 134,
            top: 51,
          ),
          child: Text(
            "Math Quiz",
            style: GoogleFonts.dmSans(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(131, 76, 52, 1),
            ),
          ),
        )
      ],
    ));
  }
}
