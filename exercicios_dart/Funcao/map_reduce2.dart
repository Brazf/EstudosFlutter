// MAP TRANSFORMAR UMA LISTA EM OUTRA MANTENDO SEU TAMANHO ORIGINAL
// (FILTER == WHRERE) FILTRA UMA LISTA EM OUTRO COM DADOS ESPECIFICADOS
// REDUCE FAZ COM QUE VC USE UMA FUNÇÃO COMO MÉTODO PRA ALGUMA "COISA"

main() {
  // JUNTAR NOMES
  var nomes = ["Fábio", "João", "Ana", "Angelica", "Mariana"];

  String juntarNomes(String nome1, String nome2) {
    print("$nome1, $nome2");
    return "$nome1, $nome2";
  }

  var nomesJuntos = nomes.reduce(juntarNomes);

  print(nomesJuntos);
  print("-------------------------------------------");
  // JUNTAR NÚMEROS

  var notas = [4.4, 3.4, 8.3, 5.7, 9.0, 8.6];

  double totalNotas(double nota1, double nota2) {
    print("$nota1, $nota2");
    return nota1 + nota2;
  }

  var total = notas.reduce(totalNotas);
  print(total);
}
