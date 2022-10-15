main() {
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Joaquin', 'nota': 8.5},
    {'nome': 'Ana', 'nota': 7.4},
    {'nome': 'Ricardo', 'nota': 6.2},
    {'nome': 'Maria', 'nota': 9.2},
    {'nome': 'Guilherme', 'nota': 8.7}
  ];

  String Function(Map) pegarNomes = (aluno) => aluno['nome'];
  int Function(String) qtdLetras = (tamanho) => tamanho.length;
  int Function(int) MultiLetras = (multi) => multi * 2;
  bool Function(String) nomesGrandes = (alunos) => alunos.length >= 7;

  var nomes = alunos.map(pegarNomes);
  var qtdLetrasNomes = alunos.map(pegarNomes).map(qtdLetras);
  var multiplacacaoLetras = qtdLetrasNomes.map(
      MultiLetras); // ou alunos.map(pegarNomes).map(qtdLetras).map(MultiLetras);
  var nomesMuitoGrandes = nomes.where(nomesGrandes);

  print(nomes);
  print(nomes.map(qtdLetras));
  print(qtdLetrasNomes);
  print(multiplacacaoLetras);
  print(nomesMuitoGrandes);
}
