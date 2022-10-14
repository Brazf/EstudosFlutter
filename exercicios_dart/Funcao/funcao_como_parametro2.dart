import 'dart:math';

void executarTeste (int qtde, Function(String) texto, String valor) {
  for(int i = 0; i < qtde; i++){
    texto(valor);
  }
}

main () {
  executarTeste(10, print, 'Oi!');
}