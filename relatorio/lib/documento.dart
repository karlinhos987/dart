// Código corrigido
abstract class Documento {
  String nomeDoDocumento;

  Documento(this.nomeDoDocumento);

  void imprimir();
}

class Relatorio extends Documento {
  Relatorio(String nomeDoDocumento) : super(nomeDoDocumento);

  @override
  void imprimir() {
    print('O $nomeDoDocumento foi enviado para impressão');
  }
}
