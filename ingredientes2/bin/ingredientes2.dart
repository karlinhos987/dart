import 'package:ingredientes2/ingredientes.dart'; // as ingredientes2;

void main() {
  // Criando instâncias de frutas, legumes e temperos
  var banana = Fruta('Banana');
  var cenoura = Legume('Cenoura');
  var sal = Tempero('Sal');

  // Exibindo os detalhes
  banana.detalhes();
  print('');
  cenoura.detalhes();
  print('');
  sal.detalhes();
}
