void main() {
  // 1 - Introdução e Variáveis
  String variavelNome = "convenção utilizada";
  int valorVariavel = 10;
  bool ehVerdadeiro = true;
  List<String> listaDePalavras = ["João", "Vitor", "Veronese", "Vieira"];

  print('${listaDePalavras[2]} - ${listaDePalavras[3]}');
  // Também tem: Map, Set

//   ------------------------   //    ------------------------   //    ------------------------

  // 2 - Introdução null-safety
  String? nomeComNull;
  nomeComNull = "ABC";
  print(nomeComNull!);
  nomeComNull = null;

  late String sobrenome;
  sobrenome = "Veronese Vieira";
  print(sobrenome);
  //sobrenome = null; // Vai dar erro por causa do late

//   ------------------------   //    ------------------------   //    ------------------------

  // 3 - IF e SWITCH
  bool seguirEmFrente = false;

  if (seguirEmFrente) {
    print("Andar");
  } else {
    print("Parar");
  }

  if (10 > 5) {
    print("10 é maior que 5!");
  }

  int valorInt = 5;
  switch (valorInt) {
    case 0:
      print("Caso 0");
      break;
    case 1:
      print("Caso 1");
      break;
    case 2:
      print("Caso 2");
      break;
    default:
      print("Caso default");
  }

//   ------------------------   //    ------------------------   //    ------------------------

  // 4 - Estruturas de repetição
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print("-- // --");

  int contador = 10;
  while (contador > 1) {
    print("Loop -> $contador");
    contador = contador - 1;
  }
}
