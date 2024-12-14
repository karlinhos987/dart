import 'dart:io';

void main() {
  double valorHora = 0.0;
  double qtdeHorasTrabalhadas = 0.0;
  double porcetagemDesconto = 0.0;
  double salarioReceber = 0.0;

  print('Digite o valor da hora: ');
  valorHora = double.parse(stdin.readLineSync()!);

  print('Digite a quantidade de horas trabalhadas: ');
  qtdeHorasTrabalhadas = double.parse(stdin.readLineSync()!);

  print('Digite a porcentagem de desconto: ');
  porcetagemDesconto = double.parse(stdin.readLineSync()!);

  double calcularSalario(double valorHora, double qtdeHorasTrabalhadas,
      double porcetagemDesconto) {
    return (valorHora * qtdeHorasTrabalhadas) -
        ((valorHora * qtdeHorasTrabalhadas) * porcetagemDesconto);
  }

  salarioReceber =
      calcularSalario(valorHora, qtdeHorasTrabalhadas, porcetagemDesconto);

  print('Voce trabalhou $qtdeHorasTrabalhadas,'
      'o valor da hora trabalhada é $valorHora,'
      'desconto de ${porcetagemDesconto / 100}%.'
      ' Voce recebera $salarioReceber');
}
