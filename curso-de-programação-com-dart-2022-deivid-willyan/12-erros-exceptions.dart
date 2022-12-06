void main() {
  try {
    // tentar alguma coisa
    print((2 / 0).toInt());
  } catch (e, stackTrace) {
    // capturar a falha
    print("Deu erro");

    // rethrow; // propaga o erro pra frente (alguém vai fazer a tratativa)

    // throw Exception("Ocorreu um erro XPTO"); // retornar um novo erro
    throw CustomError("Erro customizado");
  }
}

class CustomError implements Exception {
  final String error;
  CustomError(this.error);
}
