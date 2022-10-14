main (){
  
var notas = [4.5, 9.4, 8.4, 6.5, 7.6, 7.2];
var notasBoas = [];

for(var nota in notas){
  if(nota >= 7){
    notasBoas.add(nota);
  }
}

print(notasBoas);

}