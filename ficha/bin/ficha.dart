import 'dart:io';

void main() {
  print('Ficha cadastral');

  String? nome;
  String? cpf;
  int? idade;
  double? altura;
  bool? particiaComunidade;

  print('Digite o nome:');
  nome = stdin.readLineSync()!;

  print('Digite o cpf:');
  cpf = stdin.readLineSync()!;

  print('Digite a idade:');
  idade = int.parse(stdin.readLineSync()!);

  print('Digite a altura:');
  altura = double.parse(stdin.readLineSync()!);

  print('Você participa de alguma comunidade? (sim/nao)');
  String? resposta = stdin.readLineSync()?.toLowerCase();
  particiaComunidade = resposta == 'sim';

  print('Nome:  $nome');
  print('CPF:  $cpf');
  print('Idade:  $idade');
  print('Altura:  $altura');
  print('Participa da Comunidade: ${particiaComunidade ? "Sim" : "Não"}');
}
