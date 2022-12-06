// Dart não tem interfaces; tem abstract classes
abstract class Pessoa {
  String comunicar();
}

class PessoaET implements Pessoa {
  String comunicar() {
    return "Olá, mundo!";
  }
}

class PessoaNaoET implements Pessoa {
  String comunicar() {
    return "Bom dia!";
  }
}

// Herança
void main(List<String> args) {
  Joao joao = Joao();
  print(joao.falar());
}

class Pai {
  String falar() {
    return "Pai: 'falei!'";
  }
}

class Joao extends Pai {}
