
import 'dart:math';

main (){
  dataA(04,10,2015);
  dataA(04,10);
  dataA(04);
  dataA();
}

/* PARAMETRO OPCIONAL */
int numeroAleatorio ([int max = 10]){
  return Random().nextInt(max);
}

void dataA ([int dia = 1, int mes = 1, int ano = 1990]){
  print("$dia/$mes/$ano");
}