class ItemEstoque {
  String nomeProduto;
  int quantidade;
  double preco;

  ItemEstoque(this.nomeProduto, this.quantidade, this.preco);

  void registrarEntrada(int valor) {
    quantidade += valor;
  }

  void registrarSaida(int valor) {
    if (quantidade >= valor) {
      quantidade -= valor;
    } else {
      print('Quantidade insuficiente em estoque para realizar a saída.');
    }
  }

  void atualizarPreco(double novoPreco) {
    preco = novoPreco;
  }
}

void main() {
  ItemEstoque smartphone = ItemEstoque('Smartphone', 100, 2999.99);
  ItemEstoque notebook = ItemEstoque('Notebook', 50, 4999.99);
  ItemEstoque tablet = ItemEstoque('Tablet', 75, 1999.99);

  notebook.atualizarPreco(4799.99);

  print(
      'Produto: ${smartphone.nomeProduto}, Quantidade em estoque: ${smartphone.quantidade}, Preço: R\$${smartphone.preco}');
  print(
      'Produto: ${notebook.nomeProduto}, Quantidade em estoque: ${notebook.quantidade}, Preço: R\$${notebook.preco}');
  print(
      'Produto: ${tablet.nomeProduto}, Quantidade em estoque: ${tablet.quantidade}, Preço: R\$${tablet.preco}');
}
