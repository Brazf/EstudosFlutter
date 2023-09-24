import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercicio1",
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool textoModificado = false;

  void alternarTexto() {
    setState(() {
      textoModificado = !textoModificado;
    });
  }

  String getTexto() {
    return textoModificado ? 'Vou ficar rico!' : 'Vou ficar pobre!';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getTexto(),
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            ElevatedButton(
              onPressed: alternarTexto,
              child: Text("Clique para alternar o Texto!"),
            )
          ],
        ),
      ),
    );
  }
}
