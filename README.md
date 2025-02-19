# dart

Para criar um novo projeto
dart create my_project

Comando para rodar o projeto
dart run
dart run bin/<caminho_do_arquivo>.dart

Compile o código Dart para um executável nativo
dart compile exe <caminho_do_arquivo>.dart

Atualize as dependências definidas no pubspec.yaml
Comando para Baixar Dependências - Antes de rodar o projeto, execute o comando abaixo para garantir que todas as dependências estão configuradas
dart pub get

Para verificar problemas ou inconsistências nas dependências
dart pub outdated

Formate o código automaticamente
dart format <caminho_do_arquivo_ou_diretorio>

Analise o código para identificar erros ou padrões ruins
dart analyze

Execute os testes em um projeto Dart
dart test

Gere a documentação automática do seu projeto:
dart doc

Para executar o código com saída detalhada
dart --enable-asserts run <caminho_do_arquivo>.dart