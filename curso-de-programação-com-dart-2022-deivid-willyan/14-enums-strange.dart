void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.PIX);
}

enum TipoPagamento {
  PIX,
  BOLETO,
  CARTAO;
}

extension ExtensionTipoPagamento on TipoPagamento {
  String toValue() {
    Map map = {
      TipoPagamento.PIX: "pix",
      TipoPagamento.BOLETO: "boleto",
      TipoPagamento.CARTAO: "cartao",
    };
    return map[this];
  }
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.toValue() == "Pix") {
      print("Pagando com Pix...");
    } else if (tipoPagamento.toValue() == "boleto") {
      print("Pagando com Boleto...");
    } else if (tipoPagamento.toValue() == "cartao") {
      print("Pagando com cartão...");
    }
  }
}
