import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MainPage(),
      ),
    );

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        color: Colors.blue,
        child: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var random = Random();
  var ballIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballIndex = random.nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballIndex.png'),
      ),
    );
  }
}
