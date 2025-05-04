import 'package:locadora/locadora.dart' as locadora;

void main() {
  List<Locadora> listMovies = getMovies();

  // Imprime os filmes filtrados.
  print("Filmes chamados 'Signs'");
  filter(listMovies, name: "Signs").forEach((movie) => print(movie));

  print("\nFilmes lançados em 2000");
  filter(listMovies, releaseYear: 2000).forEach((movie) => print(movie));

  print(
      "\nFilmes dirigidos por “Chritopher Nolan” e atuados por “Christian Bale”");
  filter(listMovies,
      listActors: ["Christian Bale"],
      listDirectors: ["Christopher Nolan"]).forEach((movie) => print(movie));

  print("\nLaranja Mecânica tem cópias disponíveis?");
  filter(
    listMovies,
    name: "A Clockwork Orange",
    hasCopiesAvailable: true,
  ).forEach((movie) => print(movie));
}
