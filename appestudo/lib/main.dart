import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Center(
            child :
            Container(
              color: Colors.green,
              width: 100.0,
              height: 100.0,
            )
          ),
          Container(
              color: Colors.white,
          ),
          Container(
            color: Colors.black,
            width: 300.0,
            height: 300.0
          ),
          Container(
            color: Colors.red,
            width: 150.0,
            height: 150.0,
          ),
          Container(
            color: Colors.blue,
            width: 75.0,
            height: 75.0,
          ),
          Container(
            color: Colors.yellow,
            width: 37.0,
            height: 37.0,
            child: const Text('Centro',
              style: TextStyle( fontSize: 8.0),
              textAlign: TextAlign.center
            ),
          ),
        ],
      ),
    );
  }
}
