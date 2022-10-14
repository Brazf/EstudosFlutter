
main (){

  imprimirSaudacao(nome: "Fábio", idade: 25);

  imprimirData(15);

}

imprimirSaudacao ({String? nome, int? idade}) {
  print("$nome você não parece ter $idade anos.");
}

imprimirData (int dia, {int mes = 1, int ano = 1990}) {
  print("$dia/$mes/$ano");
}

/* EXISTEM PARAMETRO POSICIONAIS QUE SÃO AQUELES OBRIGADO PREENCHER O CAMPO, TAMBÉM EXISTEM PARAMETROS NOMEADOS QUE NÃO NECESSEICTAM DE PASSAGEM ASSIM COM OS OPICIONAIS. */