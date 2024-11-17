import 'dart:io';

void main() {
  //String? nomeDoUsuario; // Variável que pode ser nula

  double nr1 = double.parse(stdin.readLineSync()!);
  double nr2 = double.parse(stdin.readLineSync()!);

  double resultado = 0.0;

  double soma(double n1, double n2) {
    resultado = n1 + n2;
    return resultado;
  }

  double subtracao(double n1, double n2) {
    resultado = n1 - n2;
    return resultado;
  }

  double multiplicacao(double n1, double n2) {
    resultado = n1 * n2;
    return resultado;
  }

  double divisao(double n1, double n2) {
    resultado = n1 / n2;
    return resultado;
  }

  print(soma(nr1, nr2));
}
