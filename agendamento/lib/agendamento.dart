abstract class Agendamento {
  void calculaDuracaoConsulta();
  void verificaDisponibilidade();
}

class Medico implements Agendamento {
  @override
  void calculaDuracaoConsulta() {
    // Implementação: duração padrão de 30 minutos
    print("duração de 30 minutos");
  }

  @override
  void verificaDisponibilidade() {
    // Implementação: verificar disponibilidade no calendário
    print("verificar disponibilidade no calendário");
  }
}

class Dentista implements Agendamento {
  @override
  void calculaDuracaoConsulta() {
    // Implementação: duração de 45 minutos
    print("duração de 45 minutos");
  }

  @override
  void verificaDisponibilidade() {
    // Implementação: verificar disponibilidade considerando intervalos de 15 minutos
    print("verificar disponibilidade considerando intervalos de 15 minutos");
  }
}

class GerenciadorDeAgendamentos {
  List<Agendamento> profissionais = [];

  void adicionarProfissional(Agendamento profissional) {
    profissionais.add(profissional);
  }

  void exibirDuracaoEDisponibilidade() {
    for (Agendamento profissional in profissionais) {
      profissional.calculaDuracaoConsulta();
      profissional.verificaDisponibilidade();
    }
  }
}
