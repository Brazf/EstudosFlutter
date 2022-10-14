main() {

  var notas = [7.5, 8.0, 4.3, 9.0, 6.8, 9.5];

  bool Function(double) notasBoasFN = (double nota) => nota >= 7;
  bool Function(double) notasMuitoBoasFN = (double nota) => nota >= 9;

  var notasBoas = notas.where(notasBoasFN);
  var notasMuitoBoas = notas.where(notasMuitoBoasFN);
  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);

}