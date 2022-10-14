var listNum = [2, 3, 5, 8, 13];
var listString = ["Oi", "Tudo bom?", "Olá"];


Object secondElementV1 (List lista){
  return lista.length >= 2 ? lista[1] : null;
}

secondElementV2<E>(List<E> lista){
  return lista.length >= 2 ? lista[1] : null;
}

main () {
  print(secondElementV1(listNum));
  // ESPECIFICANDO A ENTRADA
  print(secondElementV2<int>(listNum));
  /* ERRO >> NUM NUMA FUNCAO ESPECIFICADA PARA RECEBER STRING << ERRO 
  print(secondElementV2<String>(listNum));
  */
  // SEM ESPECIFICAR A ENTRADA
  print(secondElementV2(listNum));
  print(secondElementV2(listString));
}





