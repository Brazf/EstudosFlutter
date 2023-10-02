import 'package:appestudo/models/previsao_hora.dart';
import 'package:appestudo/services/previsao_service.dart';
import 'package:appestudo/widgets/proximas_temperaturas.dart';
import 'package:appestudo/widgets/resumo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<PrevisaoHora>?> ultimasPrevisoes;

  void initState() {
    super.initState();
    PrevisaoService service = PrevisaoService();
    ultimasPrevisoes = service.recuperarUltimasPrevisoes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vidente'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<PrevisaoHora>?>(
          future: ultimasPrevisoes,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              List<PrevisaoHora> previsoes = snapshot.data!;
              double temperaturaAtual = previsoes[0].temperatura;
              double menorTemperatura = double.maxFinite;
              double maiorTemperatura = double.negativeInfinity;
              previsoes.forEach((obj) {
                if (obj.temperatura < menorTemperatura) {
                  menorTemperatura = obj.temperatura;
                }

                if (obj.temperatura > maiorTemperatura) {
                  maiorTemperatura = obj.temperatura;
                }
              });

              String descricao = previsoes[0].descricao;
              int numeroIcone = previsoes[0].numeroIcone;

              return Column(
                children: [
                  Resumo(
                    cidade: 'Belo Jardim-PE',
                    temperaturaAtual: temperaturaAtual,
                    temperaturaMaxima: maiorTemperatura,
                    temperaturaMinima: menorTemperatura,
                    descricao: descricao,
                    numeroIcone: numeroIcone,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ProximasTemperaturas(
                    previsoes: previsoes.sublist(1, previsoes.length),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Text('Erro ao carregar as previsões');
            }

            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
