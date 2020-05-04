import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Quize App",
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    home: QuizePage(),
  ));
}

class QuizePage extends StatefulWidget {
  @override
  _QuizePageState createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
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
              Expanded(
                child: Center(
                  child: Text(
                    "This is Question Section",
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
                        onPressed: () {},
                        child: Text(
                          "True",
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

                        },
                        child: Text(
                          "False",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check, color: Colors.green),
                  Icon(Icons.check, color: Colors.red),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
