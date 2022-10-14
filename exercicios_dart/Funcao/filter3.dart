
import 'dart:ffi';

List<E> filtrar<E> (List<E> lista, bool Function(E) fn){
  List<E> listafiltrada = [];
  for(E elemento in lista){
    if(fn(elemento)){
      listafiltrada.add(elemento);
    }
  }
  return listafiltrada;
}

main() {
  
  var nomes = ["Fábio", "João", "Ana", "Angelica", "Mariana"];
  var notas = [4.4, 3.4, 8.3, 5.7, 9.0, 8.6];

  var notasBoas = (double notas) => notas >= 7;
  var nomesGrandes = (String nomes) => nomes.length >= 5;
  
  print(filtrar(nomes, nomesGrandes));
  print(filtrar(notas, notasBoas));

}