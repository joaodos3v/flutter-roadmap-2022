void main() {
  Carro mercedes = Carro("Mercedes");
  Carro gol = Carro("Gol");

  print(gol.modelo);
  print(gol._segredo);

  gol._valor = 555;
  print(gol.valorDoCarro);
  gol.setValue(12345);
  print(gol.valorDoCarro);
}

class Carro {
  final String modelo;
  String _segredo = "Muito dinheiro"; // Variável privada

  int _valor = 1000;

  int get valorDoCarro => _valor;

  void setValue(int valor) => _valor = valor;

  Carro(this.modelo);
}
