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
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tarefas',
          ),
        ),
        body: Container(
          color: Colors.grey,
          alignment: AlignmentDirectional.topCenter,
          child: Stack(
            children: [
              Container(
                height: 140,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsetsDirectional.all(10.0),
                width: 400,
                height: 100,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 72,
                      height: 100,
                      color: Colors.black26,
                    ),
                    Text('Aprender Flutter'),
                    ElevatedButton(
                        onPressed: () {}, child: Icon(Icons.arrow_drop_up))
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

