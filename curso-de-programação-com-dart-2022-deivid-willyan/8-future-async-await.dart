void main(List<String> args) async {
  Future<String> cepFuture = getCepByName("Rua JK");
  late String cep;

  cep = await cepFuture;

  print(cep);
}

// External service
Future<String> getCepByName(String name) {
  // Simulando requisição
  return Future.value("06038000");
}
