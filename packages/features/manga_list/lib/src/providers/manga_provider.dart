import 'package:domain_entities/domain_entities.dart';

class MangaProvider {
  final _items = const [
    Tome(
        id: 'tome1',
        titre: 'Romance dawn à l\'aube d\'une grande aventure',
        parution: '24.12.1997',
        numero: 1,
        imageUrl: 'tome1OP.jpg'
      ),
      Tome(
        id: 'tome2',
        titre: 'Luffy versus la bande à Baggy !!',
        parution: '03.04.1998',
        numero: 2,
        imageUrl: 'tome2OP.jpg'
      ),
      Tome(
        id: 'tome3',
        titre: 'Une vérité qui blesse',
        parution: '04.06.1998',
        numero: 3,
        imageUrl: 'tome3OP.jpg'
      ),
      Tome(
        id: 'tome4',
        titre: 'Attaque au clair de lune',
        parution: '04.08.1998',
        numero: 4,
        imageUrl: 'tome4OP.jpg'
      ),
      Tome(
        id: 'tome5',
        titre: 'Pour qui sonne le glas',
        parution: '04.10.1998',
        numero: 5,
        imageUrl: 'tome5OP.jpg'
      ),
  ];
  List<Tome> get items => [..._items];
}