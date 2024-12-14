import 'dart:io';

void main() {
  print('Calcular a media de 3 idades');

  int idade1 = 0;
  int idade2 = 0;
  int idade3 = 0;

  print('Digite a primeira idade:');
  idade1 = int.parse(stdin.readLineSync()!);

  print('Digite a segunda idade:');
  idade2 = int.parse(stdin.readLineSync()!);

  print('Digite a terceira idade:');
  idade3 = int.parse(stdin.readLineSync()!);

  double calcularMedia(int nr1, int nr2, int nr3) {
    double resultado = 0.0;

    resultado = (nr1 + nr2 + nr3) / 3;

    return resultado;
  }

  print(
      'A media das tres( $idade1, $idade2, $idade3 ) idades eh  ${calcularMedia(idade1, idade2, idade3).toStringAsFixed(2)}');
}
