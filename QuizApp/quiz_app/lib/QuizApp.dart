import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> allQuestions = [
    {
      "question": "Who is founder of Microsoft?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 2
    },
    {
      "question": "Who is founder of Apple?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 0
    },
    {
      "question": "who is founder of Amazon?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
    {
      "question": "Who is founder of Tesla?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 3
    },
    {
      "question": "Who is founder of Google?",
      "options": ["Steve Jobs", "Lary Page", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
  ];

  bool questionScreen = true;
  int questionIndex = 0;

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestions[questionIndex]["question"],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "A.${allQuestions[questionIndex]["options"][0]}",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "B.${allQuestions[questionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "C.${allQuestions[questionIndex]["options"][2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "D.${allQuestions[questionIndex]["options"][3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return const Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
