
main () {

  Map<String, double> notas = {
    "Fábio Braz": 9.1,
    "Ricardo": 9.2,
    "Gustavo": 9.3,
    "Tomás": 9.4,
  };
  print("\n");
  for( var nome in notas.keys){
    print("Nome: $nome");
  }
  print("\n");
  for( var nota in notas.values){
    print("Nome: $nota");
  }
  print("\n");
  for( var registro in notas.entries){
    print("Nome: ${registro.key} Nota: ${registro.value}");
  }


}