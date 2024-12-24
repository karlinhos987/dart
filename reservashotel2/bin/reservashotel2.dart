import 'package:reservashotel2/quarto.dart';

void main() {
  QuartoSimples quartoSimples = QuartoSimples(3);
  quartoSimples.reservar();
  quartoSimples.calcularValorTotal();
  QuartoMedio quartoMedio = QuartoMedio(5);
  quartoMedio.reservar();
  quartoMedio.servirCafeDaManha();
  quartoMedio.calcularValorTotal();
  QuartoLuxo quartoLuxo = QuartoLuxo(7);
  quartoLuxo.reservar();
  quartoLuxo.servirCafeDaManha();
  quartoLuxo.servicoDeQuarto();
  quartoLuxo.calcularValorTotal();
}
