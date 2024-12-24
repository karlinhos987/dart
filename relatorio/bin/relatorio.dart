import 'package:relatorio/documento.dart'; // as relatorio;

void main() {
  Documento relatorio =
      Relatorio('Relatório Anual'); // Correção: Instanciando a classe concreta
  relatorio.imprimir();
}
