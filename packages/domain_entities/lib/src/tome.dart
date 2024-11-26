class Tome {
  const Tome({
    required this.id,
    required this.titre,
    required this.parution,
    required this.numero,
    required this.imageUrl
  });

  final String id;
  final String titre;
  final String parution;
  final int numero;
  final String imageUrl;
}