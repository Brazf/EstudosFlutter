import 'package:appestudo/controllers/tema_controller.dart';
import 'package:appestudo/widgets/home.dart';
import 'package:flutter/material.dart';

class VidenteApp extends StatelessWidget {
  const VidenteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: TemaController.instancia,
        builder: (context, child) {
          return MaterialApp(
            title: 'Vidente',
            theme: TemaController.instancia.usarTemaEscuro
                ? ThemeData.dark()
                : ThemeData.light(),
            debugShowCheckedModeBanner: false,
            home: Home(),
          );
        });
  }
}
