import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercicio1",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        body: Container(
            alignment: AlignmentDirectional.center,
            child: Text('Olá, Mundo',
                style: TextStyle(
                  fontSize: 25.0,
                ))
        ),
        floatingActionButton: FloatingActionButton(onPressed: Mensagem1, child: Text("Clique para mudar o Texto!")),
      ),
    );
  }
}

class Mensagem1 extends StatelessWidget {
  const Mensagem1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Opa!'),
    );
  }
}
