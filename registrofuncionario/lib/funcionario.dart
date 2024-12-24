// Classe abstrata Funcionario
abstract class Funcionario {
  String nome;
  double salarioBase;

  Funcionario(this.nome)
      : salarioBase = 3000.0; // Salário base inicializado em 3000 reais

  // Método abstrato para ser implementado nas subclasses
  double calcularSalario();
}

// Classe Analista que herda de Funcionario
class Analista extends Funcionario {
  Analista(String nome) : super(nome);

  @override
  double calcularSalario() {
    return salarioBase + (salarioBase * 1.2);
  }
}

// Classe Gerente que herda de Funcionario
class Gerente extends Funcionario {
  Gerente(String nome) : super(nome);

  @override
  double calcularSalario() {
    return salarioBase + (salarioBase * 1.5);
  }
}

// Classe Diretor que herda de Funcionario
class Diretor extends Funcionario {
  Diretor(String nome) : super(nome);

  @override
  double calcularSalario() {
    return salarioBase + (salarioBase * 2.0);
  }
}
