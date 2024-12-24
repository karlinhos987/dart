import 'package:registrofuncionario/funcionario.dart';

void main() {
  // Instâncias das classes para os funcionários
  Funcionario joao = Analista('João');
  Funcionario maria = Gerente('Maria');
  Funcionario giovana = Diretor('Giovana');

  // Impressão dos cálculos de salário
  print('Salário do Analista João: R\$ ${joao.calcularSalario()}');
  print('Salário da Gerente Maria: R\$ ${maria.calcularSalario()}');
  print('Salário da Diretora Giovana: R\$ ${giovana.calcularSalario()}');
}
