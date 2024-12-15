void main() {
  Cachorro cachorro = Cachorro('Rex');
  cachorro.comer(); // Imprime: Rex está comendo.
  cachorro.latir(); // Imprime: Rex está latindo.

  Gato gato = Gato('Mia');
  gato.comer(); // Imprime: Mia está comendo.
  gato.miar(); // Imprime: Mia está miando.
}

class Animal {
  String nome;

  Animal(this.nome);

  void comer() {
    print('$nome está comendo.');
  }
}

class Cachorro extends Animal {
  Cachorro(super.nome);

  void latir() {
    print('$nome está latindo.');
  }
}

class Gato extends Animal {
  Gato(super.nome);

  void miar() {
    print('$nome está miando.');
  }
}
