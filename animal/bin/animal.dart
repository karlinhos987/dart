class Animal {
  String nome;

  Animal(this.nome);

  void comer() {
    print('$nome está comendo.');
  }
}

//
class Cachorro extends Animal {
  String cor;

  Cachorro(this.cor);
  void latir() {
    print('$nome está latindo.');
  }
}

//Existem duas formas muito comuns para instanciar atributos da superclasse em subclasses.

//Dentro da classe Cachorro ainda precisamos atribuir um valor para o atributo da superclasse nome.
//A primeira forma que temos de atribuir esse valor é chamando o atributo super.nome dentro do construtor:
class Cachorro extends Animal {
  String cor;

  Cachorro(this.cor, super.nome);
  void latir() {
    print('$nome está latindo.');
  }
}

//Mas existe uma outra forma também super comum de fazer essa instância, utilizando : super():
//Note que para atributos da própria subclasse utilizamos this. e para atributos da superclasse apenas dizemos o seu tipo e o nome do atributo.
class Cachorro extends Animal {
  String cor;

  Cachorro(this.cor, String nome) : super(nome);
  void latir() {
    print('$nome está latindo.');
  }
}
