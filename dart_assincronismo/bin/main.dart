import 'package:dart_assincronismo/screens/account_screen.dart';

void main() {
  AccountScreen accountScreen = AccountScreen();
  accountScreen.initializeStream();
  accountScreen.runChatBot();
}

// Crie a função main com um try-catch em torno das chamadas de saque e deposito.
// Em saque, verifique se o valor a ser sacado é válido, se não for, lance uma exceção.
// Implemente a função deposito que verifica se o valor do depósito é válido, se não for, lance uma exceção.
// void main() {
//   try {
//     double saldo = 300;
//     saldo = saque(saldo, -20);
//     saldo = deposito(saldo, -10);
//     saldo = deposito(saldo, 700);
//   } catch (e) {
//     print("Exceção capturada na main: $e");
//   }
// }

// double? saque(double saldo, double valor) {
//   if (valor > saldo) {
//     print("Saldo insuficiente!");
//     return null;
//   } else if (valor <= 0) {
//     print("O valor de saque deve ser maior que zero!");
//     return null;
//   } else {
//     saldo -= valor;
//     print("Saque realizado com sucesso, saldo atual: $saldo");
//   }
  
//   return saldo;
// }

// double? deposito(double saldo, double valor) {
//   if (valor <= 0) {
//     print("Valor de depósito inválido!");
//     return null;
//   } else {
//     saldo += valor;
//     print("Depósito realizado com sucesso, saldo atual: $saldo");
//   }

//   return saldo;
// }

// Na função main, adicione prints para o início e fim, e chame a função consultaSaldo.
// Em consultaSaldo, adicione prints para o início e fim, e chame a função calculaJuros.
// Em calculaJuros, adicione um print inicial, seguido de um print final.
// void main() {
//   print("Início da função main");
//   consultaSaldo();
//   print("Fim da função main");
// }

// void consultaSaldo() {
//   print("Início da função consultaSaldo");
//   calculaJuros();
//   print("Fim da função consultaSaldo");
// }

// void calculaJuros() {
//   print("Início da função calculaJuros");
//   print("Fim da função calculaJuros");
// }

// Adicione um print no início da função main e um try-catch em torno da chamada de deposito.
// Lance uma exceção em deposito se o valor do depósito for inválido.
// Configure pontos de interrupção (breakpoints) no início da função main e na linha onde a exceção é lançada em deposito.
// Execute o código em modo de depuração e observe o comportamento no depurador.
// void main() {
//   print("Início da execução");
//   try {
//     deposito(-100);
//   } catch (e) {
//     print("Erro capturado na main: $e");
//   }
// }

// void deposito(double valor) {
//   double saldo = 300;

//   // Ponto de interrupção na linha abaixo
//   if (valor <= 0) {
//     print("Valor de depósito inválido");
//   } else {
//     saldo += valor;
//     print("Depósito realizado com sucesso. Saldo atual: $saldo");
//   }
// }


// Implemente a função main que calcula o fatorial de um número.
// Implemente a função fatorial de forma recursiva.
// Configure um ponto de interrupção na chamada recursiva dentro da função fatorial.
// Execute o código em modo de depuração e observe a pilha de execução.
// void main() {
//   int numero = 5;
//   int resultado = fatorial(numero);
//   print("O fatorial de $numero é $resultado");
// }

// int fatorial(int n) {
//   if (n <= 1) {
//     return 1;
//   } else {
//     // Ponto de interrupção na linha abaixo
//     return n * fatorial(n - 1);
//   }
// }


// Implemente a função main que realiza operações de adição e subtração em um saldo bancário.
// Implemente as funções adicionarSaldo e subtrairSaldo.
// Configure pontos de interrupção nas operações de adição e subtração dentro da função main.
// Execute o código em modo de depuração e observe como o saldo é modificado.
// void main() {
//   double saldo = 1000;
//   print("Saldo inicial: $saldo");

//   // Ponto de interrupção na linha abaixo
//   saldo = adicionarSaldo(saldo, 500);
//   print("Saldo após adição: $saldo");

//   // Ponto de interrupção na linha abaixo
//   saldo = subtrairSaldo(saldo, 200);
//   print("Saldo após subtração: $saldo");
// }

// double adicionarSaldo(double saldo, double valor) {
//   return saldo + valor;
// }

// double? subtrairSaldo(double saldo, double valor) {
//   if (saldo >= valor) {
//     return saldo - valor;
//   } else {
//     print("Saldo insuficiente");
//     return null;
//   }
// }