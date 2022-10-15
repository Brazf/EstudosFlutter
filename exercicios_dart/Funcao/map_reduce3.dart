main() {
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Joaquin', 'nota': 8.5},
    {'nome': 'Ana', 'nota': 7.4},
    {'nome': 'Ricardo', 'nota': 6.2},
    {'nome': 'Maria', 'nota': 9.2},
    {'nome': 'Guilherme', 'nota': 8.7}
  ];

  //------------ MÉDIA DAS NOTAS
  var total = alunos
      .map((alunos) => alunos['nota'])
      .map((nota) => (nota as double))
      .reduce((nota1, nota2) => nota1 + nota2);

  var media_notas = total / alunos.length;

  /*
  OUTRA FORMA DE FAZER A ROTINA ANTERIOR DE MÉDIA DE NOTAS
  var numerosArmazenados = alunos.map((aluno) => aluno['nota'] as double);
  var somaNotas = numerosArmazenados.reduce((nota1, nota2) => nota1 + nota2);
  print(somaNotas);
  */

  print("Soma das notas = $total");
  print("Media de todas as notas = $media_notas");

  //------------ MÉDIA DAS NOTAS USANDO FILTER

  var alunosTotal = alunos
      .map((nota) => nota['nota'])
      .map((nota) => nota as double)
      .where((nota) => nota >= 7.5);

  var notasBoasSomadas = alunosTotal.reduce((nota1, nota2) => nota1 + nota2);
  var mediaNotasBoas = notasBoasSomadas / alunosTotal.length;
  print("Soma das notas boas: $notasBoasSomadas");
  print("Média das notas boas: $mediaNotasBoas");
}
