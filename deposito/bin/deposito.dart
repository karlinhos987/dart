import 'dart:io';

void main() {
  List<String> operacoes = [
    'deposito',
    'retirada',
    'transferencia',
    'pagamento'
  ];
  String? operacao;

  operacao = validaOperacao(operacao, operacoes);

  double? valor;

  valor = validaValor(valor);

  print('Operação escolhida: $operacao, Valor: $valor');
}

double? validaValor(double? valor) {
  print('Digite o valor da operação:');
  valor = double.tryParse(stdin.readLineSync()!);

  if (valor == null || valor <= 0) {
    print('Valor inválido. Tente novamente.');
    return validaValor(valor);
  } else {
    return valor;
  }
}

String? validaOperacao(String? operacao, List<String> operacoes) {
  print('Digite uma operação (deposito, retirada, transferencia, pagamento):');
  operacao = stdin.readLineSync();

  if (operacoes.contains(operacao)) {
    return operacao;
  } else {
    print('Operação inválida. Tente novamente.');
    return validaOperacao(operacao, operacoes);
  }
}
