import 'dart:io';

void main() {
  List<Map<String, dynamic>> alunos = [];

  while (true) {
    print('\n=== Menu ===');
    print('1 - Registrar um aluno e suas notas');
    print('2 - Ver a lista de alunos e suas médias');
    print('3 - Alterar uma nota de um aluno');
    print('4 - Sair do programa');
    print('Escolha uma opção: ');
    String? escolha = stdin.readLineSync();

    switch (escolha) {
      case '1':
        registrarAluno(alunos);
        break;
      case '2':
        exibirAlunos(alunos);
        break;
      case '3':
        alterarNota(alunos);
        break;
      case '4':
        print('Encerrando o programa...');
        exit(0);
      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}

void registrarAluno(List<Map<String, dynamic>> alunos) {
  stdout.write('Digite o nome do aluno: ');
  String? nome = stdin.readLineSync();

  if (nome == null || nome.isEmpty) {
    print('Nome inválido. Tente novamente.');
    return;
  }

  List<double> notas = [];
  for (int i = 1; i <= 4; i++) {
    stdout.write('Digite a nota $i (ou "s" para sair): ');
    String? inputNota = stdin.readLineSync();

    if (inputNota != null && inputNota.toLowerCase() == 's') {
      print('Registro cancelado.');
      return;
    }

    try {
      double nota = double.parse(inputNota!);
      notas.add(nota);
    } catch (e) {
      print('Nota inválida. Tente novamente.');
      i--;
    }
  }

  double media = calcularMedia(notas);
  alunos.add({'nome': nome, 'notas': notas, 'media': media});

  print('Aluno $nome registrado com sucesso!');
}

double calcularMedia(List<double> notas) {
  double soma = notas.fold(0, (total, nota) => total + nota);
  return soma / notas.length;
}

void exibirAlunos(List<Map<String, dynamic>> alunos) {
  if (alunos.isEmpty) {
    print('Nenhum aluno registrado.');
    return;
  }

  print('\n=== Lista de Alunos ===');
  for (var aluno in alunos) {
    print('Nome: ${aluno['nome']}');
    print('Notas: ${aluno['notas']}');
    print('Média: ${aluno['media'].toStringAsFixed(2)}\n');
  }
}

void alterarNota(List<Map<String, dynamic>> alunos) {
  if (alunos.isEmpty) {
    print('Nenhum aluno registrado para alterar.');
    return;
  }

  stdout.write('Digite o nome do aluno: ');
  String? nome = stdin.readLineSync();

  var aluno = alunos.firstWhere(
    (aluno) => aluno['nome'].toLowerCase() == nome?.toLowerCase(),
    orElse: () => {},
  );

  if (aluno.isEmpty) {
    print("Aluno não encontrado");
  }

  print('\nAluno encontrado: ${aluno['nome']}');
  print('Notas atuais: ${aluno['notas']}');

  stdout.write('Digite o número da nota que deseja alterar (1-4): ');
  String? inputNumeroNota = stdin.readLineSync();

  try {
    int numeroNota = int.parse(inputNumeroNota!);
    if (numeroNota < 1 || numeroNota > 4) {
      print('Número inválido. Escolha entre 1 e 4.');
      return;
    }

    stdout.write('Digite a nova nota: ');
    String? inputNovaNota = stdin.readLineSync();

    double novaNota = double.parse(inputNovaNota!);

    aluno['notas'][numeroNota - 1] = novaNota;
    aluno['media'] = calcularMedia(aluno['notas']);

    print('Nota alterada com sucesso!');
    print('Novas notas: ${aluno['notas']}');
    print('Nova média: ${aluno['media'].toStringAsFixed(2)}');
  } catch (e) {
    print('Entrada inválida. Tente novamente.');
  }
}
