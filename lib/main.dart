import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(RandomWidget());

class RandomWidget extends StatefulWidget {
  @override
  _RandomWidgetState createState() => _RandomWidgetState();
}

class _RandomWidgetState extends State<RandomWidget> {
  int _randomNumber = 1;
  void _makeRandomNumber(){
  setState(() {
    _randomNumber = Random().nextInt(500) + 1 ;
    print(_randomNumber);
  });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Number'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    'Random Number: $_randomNumber',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[500],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: _makeRandomNumber,
        child: Icon(
            Icons.autorenew
        ),
        backgroundColor: Colors.black,),
      ),
    );
  }
}
