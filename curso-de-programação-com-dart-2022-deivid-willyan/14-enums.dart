void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.PIX);
}

enum TipoPagamento {
  PIX,
  BOLETO,
  CARTAO;
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento == TipoPagamento.PIX) {
      print("Pagando com Pix...");
    } else if (tipoPagamento == TipoPagamento.BOLETO) {
      print("Pagando com Boleto...");
    } else if (tipoPagamento == TipoPagamento.CARTAO) {
      print("Pagando com cartão...");
    }
  }
}
