import 'package:servivo/servivo.dart';

void main() {
  Planta girassol = Planta('Girassol', 'flor');
  girassol.mostrarCaracteristicas();
  Planta laranjeira = Planta('Laranjeira', 'árvore');
  laranjeira.mostrarCaracteristicas();

  Animal humano = Animal('Ser humano', 'bípede', 75);
  humano.mostrarCaracteristicas();
  Animal gato = Animal('Gato', 'quadrúpede', 20);
  gato.mostrarCaracteristicas();
  Animal cao = Animal('Cão', 'quadrúpede', 20);
  cao.mostrarCaracteristicas();
}
