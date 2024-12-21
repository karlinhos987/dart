import 'package:esporte/esporte.dart' as esporte;

void main() {}

abstract class Pontuacao {
  void calculaPontos();
  void devolveColocacao();
}

abstract class Esporte {
  String time;

  Esporte(this.time);
}

class Volei extends Esporte implements Pontuacao {
  Volei(super.time);

  @override
  void calculaPontos() {
    // TODO: implement calculaPontos
  }

  @override
  void devolveColocacao() {
    // TODO: implement devolveColocacao
  }
}
