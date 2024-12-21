import 'package:figura2/figura2.dart' as figura2;

void main() {
  List<Figura> figuras = [Circulo(5), Quadrado(4)];

  for (var figura in figuras) {
    print('Área: ${figura.calcularArea()}');
  }
}

abstract class Figura {
  double calcularArea();
}

class Circulo implements Figura {
  double raio;

  Circulo(this.raio);

  @override
  double calcularArea() {
    return 3.14159 * raio * raio;
  }
}

class Quadrado implements Figura {
  double lado;

  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}
