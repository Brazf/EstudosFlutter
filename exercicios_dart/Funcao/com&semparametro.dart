import 'dart:math';

main() {
  /*
  print("resultados sem retorno:");
  somarNumeros(5, 6);
  print("/n");
  print("resultados com retorno: ${somarNumeros2(3, 4)}");

  int contaSemRetorno = somarNumeros(5, 7);
  */
  String contaComRetorno = somarNumeros2("Fábio", "Braz");
  print(contaComRetorno);

  retornoSemParamento();
}

void somarNumeros(String a, String b) {
  print(a + b);
}

/* PODE IMPRIMIR E USAR RETURN EM UMA MESMA FUNÇÃO (ASSIM ELA FUNIONA DE DOIS JEITO, MAS NÃO SEI SE É O INDICADO)*/
String somarNumeros2(String a, String b) {
  return a + " " + b;
}

void retornoSemParamento() {
  int a = Random().nextInt(15);
  int b = Random().nextInt(15);
  print(a);
  print(b);
  print("Resultado= ${a + b}");
}
