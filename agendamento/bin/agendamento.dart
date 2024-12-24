import 'package:agendamento/agendamento.dart';

void main() {
  Medico medico = Medico();
  Dentista dentista = Dentista();

  GerenciadorDeAgendamentos gerenciador = GerenciadorDeAgendamentos();
  gerenciador.adicionarProfissional(medico);
  gerenciador.adicionarProfissional(dentista);

  gerenciador.exibirDuracaoEDisponibilidade();
}
