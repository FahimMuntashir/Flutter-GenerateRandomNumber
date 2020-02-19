import 'package:flutter/material.dart';

void main() => runApp(RandomWidget());

class RandomWidget extends StatefulWidget {
  @override
  _RandomWidgetState createState() => _RandomWidgetState();
}

class _RandomWidgetState extends State<RandomWidget> {
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
                    'Random Number: 0',
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
        floatingActionButton: FloatingActionButton(onPressed: () {
          print('Action');
        },
        child: Icon(
            Icons.autorenew
        ),
        backgroundColor: Colors.black,),
      ),
    );
  }
}
