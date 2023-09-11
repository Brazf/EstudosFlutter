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
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.green,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                color: Colors.white,
                width: 50.0,
                height: 50.0,
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.white,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                width: 100.0,
                height: 50.0,
              ),
              Container(
                color: Colors.green,
                width: 100.0,
                height: 50.0,
              ),
              Container(
                color: Colors.red,
                width: 100.0,
                height: 50.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
