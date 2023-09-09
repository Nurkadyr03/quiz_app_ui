import 'package:flutter/material.dart';
import 'package:qestion_app/quizButton.dart';
import 'package:qestion_app/result_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'ТАПШЫРМА - 07',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Кыргызстанда 7 область барбы?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Spacer(),
            QuizButton(
              isTrue: true,
            ),
            SizedBox(
              height: 20,
            ),
            QuizButton(
              isTrue: false,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                ResultIcon(isTrue: true),
                ResultIcon(isTrue: false),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
