import 'package:flutter/material.dart';

main() {
  runApp(const Construirapp());
}

class Construirapp extends StatelessWidget {
  const Construirapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Title: AppBar')),
        /* TEXT = WIDGET VISÍVEL DE TEXTO
        body: Text('Fábio Braz Ferreira'),
        */
        body: Column(
          children: const [
            Text('children of column'),
            Text('children of column'),
            Text('children of column'),
          ],
        ),
      ),
    );
  }
}
