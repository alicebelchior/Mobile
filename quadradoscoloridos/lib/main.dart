import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meus quadrados coloridos!'),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    _buildColorBox(Colors.red),
                    _buildColorBox(Colors.yellow),
                    _buildColorBox(Colors.green),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4.0),
                        color: Colors.purple,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4.0),
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4.0),
                        color: Colors.cyan,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4.0),
                        color: Colors.brown,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4.0),
                        color: Colors.indigo,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildColorBox(Color color) {
  return Container(
    margin: EdgeInsets.all(4.0),
    color: color,
  );
}