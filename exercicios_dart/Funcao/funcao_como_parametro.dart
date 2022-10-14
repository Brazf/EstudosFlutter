import 'dart:math';

var Numpar = () => print("O valor é par!");
var Numimpar = () => print("O valor é Ímpar!");

void executarTeste (Function par, Function impar) {
  
  int sorteio = Random().nextInt(10);
  print(sorteio); 
  sorteio  % 2 == 0 ? par() : impar();
}

main () {
  executarTeste(Numpar, Numimpar);
}