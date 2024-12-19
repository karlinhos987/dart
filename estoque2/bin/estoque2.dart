// Classe para gerenciar itens de estoque
class ItemEstoque {
  String nome;
  int quantidade;
  double preco;

  // Construtor da classe
  ItemEstoque(this.nome, this.quantidade, this.preco);

  // Método para registrar entrada de estoque
  void registrarEntrada(int quantidadeEntrada) {
    quantidade += quantidadeEntrada;
    print('$quantidadeEntrada unidades adicionadas ao estoque de $nome.');
  }

  // Método para registrar saída de estoque
  void registrarSaida(int quantidadeSaida) {
    if (quantidadeSaida > quantidade) {
      print('Erro: Estoque insuficiente para $nome.');
    } else {
      quantidade -= quantidadeSaida;
      print('$quantidadeSaida unidades removidas do estoque de $nome.');
    }
  }

  // Método para alterar o preço do item
  void alterarPreco(double novoPreco) {
    preco = novoPreco;
    print(
        'O preço de $nome foi atualizado para R\$${preco.toStringAsFixed(2)}.');
  }

  // Método para exibir informações do item
  void exibirInformacoes() {
    print(
        'Produto: $nome, Quantidade: $quantidade, Preço: R\$${preco.toStringAsFixed(2)}');
  }
}

void main() {
  // ** Parte 1: Criando e exibindo itens **
  ItemEstoque smartphone = ItemEstoque('Smartphone', 100, 1500.00);
  ItemEstoque notebook = ItemEstoque('Notebook', 50, 3000.00);

  print('\n=== Parte 1: Informações iniciais dos itens ===');
  smartphone.exibirInformacoes();
  notebook.exibirInformacoes();

  // ** Parte 2: Registrando entradas e saídas de estoque **
  print('\n=== Parte 2: Registrando movimentações de estoque ===');
  smartphone.registrarEntrada(20);
  notebook.registrarSaida(10);

  print('\nNovas quantidades em estoque:');
  smartphone.exibirInformacoes();
  notebook.exibirInformacoes();

  // ** Parte 3: Gerenciando múltiplos itens de estoque **
  print('\n=== Parte 3: Gerenciando múltiplos itens ===');
  ItemEstoque tablet = ItemEstoque('Tablet', 30, 1200.00);
  List<ItemEstoque> itensEstoque = [smartphone, notebook, tablet];

  print('\nInformações de todos os itens em estoque:');
  for (var item in itensEstoque) {
    item.exibirInformacoes();
  }

  // ** Parte 4: Atualizando preços dos itens **
  print('\n=== Parte 4: Atualizando preços dos itens ===');
  notebook.alterarPreco(2800.00);

  print('\nInformações atualizadas dos itens:');
  for (var item in itensEstoque) {
    item.exibirInformacoes();
  }
}
