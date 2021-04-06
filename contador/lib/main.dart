import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int count = 0;

  void _counter() {
    setState(() {
      count++;
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '$count',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Add'),
        onPressed: _counter,
      ),
    );
  }
}
