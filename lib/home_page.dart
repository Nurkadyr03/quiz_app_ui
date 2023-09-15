import 'package:flutter/material.dart';
import 'package:qestion_app/model/quiz_model.dart';
import 'package:qestion_app/quizButton.dart';
import 'package:qestion_app/result_icon.dart';


import 'draver.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuura_Jooptor = <bool>[];
  List tuura_emes_Jooptor = <bool>[];
  void teksher(bool value) {
    setState(() {});
    if (quizzes[index].answer == value) {
      jooptor.add(true);
      tuura_Jooptor.add(true);
    } else {
      jooptor.add(false);
      tuura_emes_Jooptor.add(true);
    }

    if (quizzes[index] == quizzes.last) {
      index = 0;
      showDialog(
          context: context,
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AlertDialog(
                 backgroundColor: Colors.black26,
                  title: const Text('Testtin jyiyntygy ',style:TextStyle(color:Colors.white)),
                  content: Text(
                      'Tuurasay: ${tuura_Jooptor.length}   Tuura emesi : ${tuura_emes_Jooptor.length}',style: const TextStyle(color:Colors.white),),
                  icon: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        if (tuura_Jooptor.length > 0) {
                          tuura_Jooptor.clear();
                          tuura_emes_Jooptor.clear();
                        }
                        ;
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                        size: 30.0,
                      )),
                ),
              ],
            );
          });
      jooptor.clear();
    } else {
      index++;
    }
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DriversPage(),
      ),
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
            const Spacer(),
            Text(
              quizzes[index].question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const Spacer(),
            QuizButton(
              tuuraButtonbu: true,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            QuizButton(
              tuuraButtonbu: false,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jooptor.length,
                itemBuilder: (BuildContext context, int i) {
                  return jooptor[i]
                      ? const ResultIcon(isTrue: true)
                      : const ResultIcon(isTrue: false);
                },
              ),
            ),
           
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
