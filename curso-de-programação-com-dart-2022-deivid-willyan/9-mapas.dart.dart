void main() {
  List<String> lista = [];
  Map<String, String> mapa = {"chave": "valor"};

  print(mapa['chave']);

  mapa.putIfAbsent('novaChave', () => 'novoValor');
  print(mapa);

  mapa['novaChaveDois'] = 'novoValorDois';
  print(mapa);

  mapa.remove('chave');
  print(mapa);

  mapa['novaChaveDois'] = 'atualizado';
  print(mapa);

  mapa.update('novaChave', (value) => 'nova chave atualizada');
  print(mapa);

  print('=========================---------------------');

  mapa.forEach((key, value) {
    print('a chave é: $key, o valor é $value');
  });

  print('=========================---------------------');

  mapa.keys.forEach(print);
  mapa.values.forEach(print);
}
