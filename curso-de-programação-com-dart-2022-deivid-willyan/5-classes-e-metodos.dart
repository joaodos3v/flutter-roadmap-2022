void main() {
  Celular celularDoJoao = Celular("Azul", 4, 0.800, 5.7);
  Celular celularDoDeivid = Celular("Preto", 10, 0.100, 5.7);

  print(celularDoJoao.toString());
  print(celularDoDeivid.toString());

  double valorDoCelularDoJoao = celularDoJoao.valorDoCelular(1000);
  print("R\$ $valorDoCelularDoJoao");
}

class Celular {
  final String cor;
  final int qtdProcessadores;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdProcessadores, this.tamanho, this.peso);

  String toString() {
    return "Cor: $cor, qtdProcessadores: $qtdProcessadores, Peso: $peso, Tamanho: $tamanho";
  }

  double valorDoCelular(double valor) {
    return valor * qtdProcessadores;
  }
}
