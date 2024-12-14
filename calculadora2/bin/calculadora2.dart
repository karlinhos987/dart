import 'dart:io';

void main() {
  //String? nomeDoUsuario; // Variável que pode ser nula

  double nr1 = 0.0;
  double nr2 = 0.0;
  String operacao = "";

  double soma(double n1, double n2) {
    return n1 + n2;
  }

  double subtracao(double n1, double n2) {
    return n1 - n2;
  }

  double multiplicacao(double n1, double n2) {
    return n1 * n2;
  }

  double divisao(double n1, double n2) {
    return n1 / n2;
  }

  double calcular(nr1, nr2) {
    switch (operacao) {
      case "+":
        return soma(nr1, nr2);

      case "-":
        return subtracao(nr1, nr2);

      case "*":
        return multiplicacao(nr1, nr2);

      case "/":
        return divisao(nr1, nr2);
        break;
    }
    return 0;
  }

  print("Digite o primeiro valor");

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      nr1 = double.parse(entrada);
    }
  }

  print("Digite uma operação");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    operacao = entrada;
  }

  print("Digite o segundo valor");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      nr2 = double.parse(entrada);
    }
  }

  print("O resultado da operação é: ${calcular(nr1, nr2)}");
}
