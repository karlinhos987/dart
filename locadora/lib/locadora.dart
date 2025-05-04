class Locadora {
  String id;
  String name;
  int? releaseYear;
  List<String> listDirectors;
  List<String> listActors;
  String? producer;
  List<Dvd> listCopies;

  Locadora({
    required this.id,
    required this.name,
    this.releaseYear,
    this.producer,
  })  : this.listDirectors = [],
        this.listActors = [],
        this.listCopies = [];

  @override
  String toString() {
    String director = listDirectors.isNotEmpty ? listDirectors.first : 'N/A';
    String copies = listCopies.where((dvd) => dvd.isAvailable).isNotEmpty
        ? listCopies
            .where((dvd) => dvd.isAvailable)
            .map((e) => e.id)
            .join(" - ")
        : 'N/A';
    return '$id: $name, ${releaseYear ?? 'Ano desconhecido'}, Diretor: $director, Availables: $copies';
  }

  List<Locadora> filter(List<Locadora> database) {
    return [];
  }

  List<Locadora> filter(
    List<Locadora> database, {
    String? id,
    String? name,
    int? releaseYear,
    List<String>? listDirectors,
    List<String>? listActors,
    String? producer,
    bool? hasCopiesAvailable,
  }) {
    return [];
  }

  List<Locadora> filter(
    List<Locadora> database, {
    String? id,
    String? name,
    int? releaseYear,
    List<String>? listDirectors,
    List<String>? listActors,
    String? producer,
    bool? hasCopiesAvailable,
  }) {
    return database.where(
      (movie) {
        return true;
      },
    ).toList();
  }

  List<Locadora> filter(
    List<Locadora> database, {
    String? id,
    String? name,
    int? releaseYear,
    List<String>? listDirectors,
    List<String>? listActors,
    String? producer,
    bool? hasCopiesAvailable,
  }) {
    return database.where((movie) {
      // Filtra por ID
      if (id != null && movie.id != id) {
        return false;
      }
      // Filtra por nome
      if (name != null &&
          !movie.name.toLowerCase().contains(name.toLowerCase())) {
        return false;
      }
      // Filtra por ano de lançamento
      if (releaseYear != null && movie.releaseYear != releaseYear) {
        return false;
      }
      // Filtra por diretores
      if (listDirectors != null &&
          !listDirectors
              .every((director) => movie.listDirectors.contains(director))) {
        return false;
      }
      // Filtra por atores
      if (listActors != null &&
          !listActors.every((actor) => movie.listActors.contains(actor))) {
        return false;
      }
      // Filtra por produtor
      if (producer != null && movie.producer != producer) {
        return false;
      }
      // Filtra por disponibilidade de cópias
      if (hasCopiesAvailable != null &&
          hasCopiesAvailable !=
              movie.listCopies.any((dvd) => dvd.isAvailable)) {
        return false;
      }

      return true;
    }).toList();
  }
}

class Dvd {
  String id;
  String movieId;
  bool isAvailable;

  Dvd({required this.id, required this.movieId, required this.isAvailable});
}
