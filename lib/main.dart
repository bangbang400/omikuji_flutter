import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'おみくじアプリ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _kekka = 0;

  void _runOmikuji() {
    setState(() {
      var _rund = new math.Random();
      _kekka = _rund.nextInt(5).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: 500,
        child: Column(
          children: <Widget>[
            Container(
              width: 200,
              height: 300,
              child: Image.asset('/images/image1.jpg'),
            ),
            Container(padding: EdgeInsets.all(30.0), child: Text('$_kekka')),
            Text('Press the button below to start'),
            ElevatedButton(
              onPressed: () {
                _runOmikuji();
              },
              child: Text('Start Omikuji'),
            ),
          ],
        ),
      ),
    );
  }
}
