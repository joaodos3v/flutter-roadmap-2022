void main() {
  Login login = Login();
  try {
    login.logar();
  } on PasswordLengthError catch (e) {
    print("Sua senha tem 6 caracteres ou menos");
  } catch (e) {
    print("Erro genérico");
  } finally {
    print("Finalizou");
    // Poderia enviar logs pro Firebase Analytics ou pro servidor, por exemplo
  }
}

class Login {
  void logar() {
    String user = "admin";
    String pass = "123456";

    if (pass.length <= 6) {
      throw Exception();
    }
  }
}

class PasswordLengthError implements Exception {
  PasswordLengthError();
}
