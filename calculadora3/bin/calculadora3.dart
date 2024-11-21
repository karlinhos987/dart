import 'dart:io';

void main() {
  double nr1 = 0;
  double nr2 = 0;
  String operacao = "";
  String? entrada = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];

  void soma() {
    print(nr1 + nr2);
  }

  void subtracao() {
    print(nr1 - nr2);
  }

  void divisao() {
    print(nr1 / nr2);
  }

  void multiplicacao() {
    print(nr1 * nr2);
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();

      case "-":
        subtracao();

      case "*":
        multiplicacao();

      case "/":
        divisao();
        break;
    }
  }

  void getOperacao() {
    print("Digite uma operação ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      } else {
        print("Operação inválida");
        getOperacao();
      }
    }
  }

  print("Digite o primeiro valor");

  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      nr1 = double.parse(entrada!);
    }
  }

  getOperacao();

  print("Digite o segundo valor");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      nr2 = double.parse(entrada!);
    }
  }

  print("O resultado da operação é:");

  calcular();
}
