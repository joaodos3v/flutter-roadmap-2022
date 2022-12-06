import 'dart:convert';

void main() {
  /**
   * String para Mapa
  */
  String json = '''
    {
      "usuario": "joao@email.com",
      "senha": 123456,
      "permissoes": [
        "admin", "owner"
      ]
    }
  ''';

  print(json);

  Map resultJson = jsonDecode(json);

  print(resultJson.runtimeType);
  print(resultJson['usuario']);

  print(resultJson['permissoes'][1]);

  print('=========================---------------------');

  /**
   * Mapa para String
  */
  Map mapa = {
    "nome": "João",
    "pass": 123,
    "permissions": ["owner", "admin"]
  };
  print(mapa);

  var result = jsonEncode(mapa);
  print(result);
}
