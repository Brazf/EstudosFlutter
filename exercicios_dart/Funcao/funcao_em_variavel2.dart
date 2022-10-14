
// ADICÇÃO USANDO A IDEIA DA FUNÇÃO ANÔMIMA E USANDO RETURN COM {CHAVES}.
var adicao = (int a, int b) {
  return a+b;
};
// ADICAO1 USANDO A IDEIA DA FUNÇÃO ARROW QUE SUBISTITUA O RETURN E TAMBÉM AS CHAVES.
var adicao1 = (int a, int b) => a+b;

// A PARTIR DAQUI JÁ SABENDO A IDEIA DA FUNÇÃO USANDO ARROW VOU USAR APENAS ESSA IDEIA

var subtracao1 = (int a, int b) => a-b;

var divisao1 = (int a, int b) => a/b;

var multiplicacao1 = (int a, int b) => a*b;

main () {
  print(adicao(5,4));
  print(subtracao1(5,4));
  print(divisao1(10,2));
  print(multiplicacao1(5,4));
}



