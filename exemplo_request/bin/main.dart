import 'package:http/http.dart' as http;

void main() async {
  // Criando uma URI diretamente utilizando o construtor
  var uri = Uri(
    scheme: 'https',
    host: 'jsonplaceholder.typicode.com',
    path: '/posts/1',
  );

  // Realizando uma requisição GET utilizando a URI criada
  var response = await http.get(uri);

  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print('Erro: ${response.statusCode}');
  }
}
