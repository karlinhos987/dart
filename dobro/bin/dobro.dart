import 'dart:io';

void main() {
  print('Calcular o dobro');

  //double resultado = 0.0;

  print('Digite um número');
  double nr1 = double.parse(stdin.readLineSync()!);

  double calcularDobro(double nr) {
    double resultado = nr * 2;
    return resultado;
  }

  print('O dobro de $nr1 eh  ${calcularDobro(nr1)}');
}
