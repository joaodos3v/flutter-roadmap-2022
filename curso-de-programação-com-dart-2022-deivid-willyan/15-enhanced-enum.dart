// Versão mínima do Dart para rodar essa funcionalidade: 2.17
void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.CARTAO);
}

enum TipoPagamento {
  PIX(1, 'Pix'),
  BOLETO(2, 'Boleto'),
  CARTAO(3, 'Cartao');

  final int id;
  final String value;

  const TipoPagamento(this.id, this.value);
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento == TipoPagamento.PIX) {
      print("Pagando com Pix... ID: ${tipoPagamento.id}");
    } else if (tipoPagamento == TipoPagamento.BOLETO) {
      print("Pagando com Boleto... ID: ${tipoPagamento.id}");
    } else if (tipoPagamento == TipoPagamento.CARTAO) {
      print("Pagando com cartão... ID: ${tipoPagamento.id}");
    }
  }
}
