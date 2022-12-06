void main(List<String> args) {
  Pagamento pagamento = PagamentoComBoleto();
  pagamento.pagar();

  pagamento = PagamentoComPix();
  pagamento.pagar();
}

abstract class Pagamento {
  void pagar();
}

class PagamentoComBoleto implements Pagamento {
  void pagar() {
    print("Pagando com boleto");
  }
}

class PagamentoComPix implements Pagamento {
  void pagar() {
    print("Pagando com PIX");
  }
}
