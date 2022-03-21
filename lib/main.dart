import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterHajimeniKakuYatu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('タイトルバーネー'),
        ),
        body: Text(
          'テキストスタイル',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}