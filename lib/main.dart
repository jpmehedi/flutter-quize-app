import 'package:flutter/material.dart';
import 'package:quize_app/quize_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizeBrain quizeBrain = QuizeBrain();
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quize App",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: QuizePage(),
    ),
  );
}

class QuizePage extends StatefulWidget {
  @override
  _QuizePageState createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  List<Icon> scoreKipper = [];

  void checkedAnswer(bool userPickedAnser) {
    bool correctAnswer = quizeBrain.getQuestionAnswer();
    setState(() {
      if (quizeBrain.isFinised() == true) {
        Alert(
          context: context,
          title: "কুইজ শেষ হয়েছে",
          desc: "ধন্যবাদ",
        ).show();
        quizeBrain.reSet();
        scoreKipper = [];
      } else {
        if (correctAnswer == userPickedAnser) {
          scoreKipper.add(
            Icon(Icons.check, color: Colors.green),
          );
        } else {
          scoreKipper.add(
            Icon(Icons.close, color: Colors.red),
          );
        }
        quizeBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: scoreKipper,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    quizeBrain.getQuestionTxt(),
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        color: Colors.green,
                        onPressed: () {
                          checkedAnswer(true);
                        },
                        child: Text(
                          "সত্য",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        color: Colors.red,
                        onPressed: () {
                          checkedAnswer(false);
                        },
                        child: Text(
                          "মিথ্যা",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
