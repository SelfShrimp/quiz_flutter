import 'package:flutter/material.dart';
import 'package:quiz/Classes/quiz_class.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final SharedPreferences prefs;

class QuizScreen extends StatelessWidget {
  const QuizScreen({
    Key? key,
    this.questList,
  }) : super(key: key);

  final List<Quiz>? questList;

  @override
  Widget build(BuildContext context) {
    ()async{
      prefs = await SharedPreferences.getInstance();
    }();

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(child: Container(
              margin: const EdgeInsets.only(top: 50),
                child: Text(questList![0].question!))),
            ElevatedButton(
              onPressed: () async {
                if (questList![0].correctAnswers == "answer_a") {
                  addCount();
                }
                nextScreen(context);
              },
              child: Text(questList![0].answers!.answer_a!),
            ),
            ElevatedButton(
              onPressed: () async {
                if (questList![0].correctAnswers == "answer_b"){
                  addCount();
                }
                nextScreen(context);
              },
              child: Text(questList![0].answers!.answer_b!),
            ),
            if (questList![0].answers?.answer_c != null)
              ElevatedButton(
                onPressed: () async {
                  if (questList![0].correctAnswers == "answer_c") {
                    addCount();
                  }
                  nextScreen(context);
                },
                child: Text(questList![0].answers!.answer_c!),
              ),
            if (questList![0].answers?.answer_d != null)
              ElevatedButton(
                onPressed: () {
                  if (questList![0].correctAnswers == "answer_d") {
                    addCount();
                  }
                  nextScreen(context);
                },
                child: Text(questList![0].answers!.answer_d!),
              ),
            if (questList![0].answers?.answer_e != null)
              ElevatedButton(
                onPressed: () {
                  if (questList![0].correctAnswers == "answer_e") {
                    addCount();
                  }
                  nextScreen(context);
                },
                child: Text(questList![0].answers!.answer_e!),
              ),
            if (questList![0].answers?.answer_f != null)
              ElevatedButton(
                onPressed: () {
                  if (questList![0].correctAnswers == "answer_f") {
                    addCount();
                  }
                  nextScreen(context);
                },
                child: Text(questList![0].answers!.answer_f!),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> addCount() async {
      await prefs.setInt('counter', prefs.getInt('counter')!+1);
  }

  void nextScreen(BuildContext context){
      questList!.removeAt(0);
      if(questList!.isNotEmpty){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => QuizScreen(questList: questList,)),
        );
      }
  }
}