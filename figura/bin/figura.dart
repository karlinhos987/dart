import 'package:figura/figura.dart' as figura;

void main() {
  Circulo circulo = Circulo(5);
  Quadrado quadrado = Quadrado(4);

  print('Área do círculo: ${circulo.calcularArea()}');
  print('Área do quadrado: ${quadrado.calcularArea()}');
}

abstract class Figura {
  double calcularArea();
}

class Circulo extends Figura {
  double raio;

  Circulo(this.raio);

  @override
  double calcularArea() {
    return 3.14159 * raio * raio;
  }
}

class Quadrado extends Figura {
  double lado;

  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}
