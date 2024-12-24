// Classe base Ingrediente
abstract class Ingrediente {
  String nome;
  String tipo;

  Ingrediente(this.nome, this.tipo);

  void detalhes() {
    print('Ingrediente: $nome');
    print('Tipo: $tipo');
  }
}

// Classe Fruta, que herda de Ingrediente
class Fruta extends Ingrediente {
  Fruta(String nome) : super(nome, 'Fruta');

  @override
  void detalhes() {
    print('Detalhe: As frutas geralmente não são cozidas nas receitas.');
  }
}

// Classe Legume, que herda de Ingrediente
class Legume extends Ingrediente {
  Legume(String nome) : super(nome, 'Legume');

  @override
  void detalhes() {
    print('Detalhe: Os legumes geralmente precisam ser cozidos nas receitas.');
  }
}

// Classe Tempero, que herda de Ingrediente
class Tempero extends Ingrediente {
  Tempero(String nome) : super(nome, 'Tempero');

  @override
  void detalhes() {
    print('Detalhe: Os temperos são usados para condimentar os alimentos.');
  }
}
