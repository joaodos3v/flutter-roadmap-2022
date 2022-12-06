void main() {
  String nome = "joao";
  print(Utils().firstCharToUpperCase(nome));

  print(nome.firstCharToUpperCase());
  print("opa".firstCharToUpperCase());

  print(EnumTest.enumValue.toValue());
  print(EnumTest.enumNovo.toValue());
}

// Forma mais normal
class Utils {
  firstCharToUpperCase(String value) {
    return value[0].toUpperCase() + value.substring(1);
  }
}

// Com extensões
extension ExtensionsString on String {
  String firstCharToUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}

// Mais exemplos
enum EnumTest {
  enumValue,
  enumNovo;
}

extension ExtensionsEnum on Enum {
  String toValue() {
    Map map = {
      EnumTest.enumValue: "xptoQualquerCoisa",
      EnumTest.enumNovo: "novoValor"
    };
    return map[this];
  }
}
