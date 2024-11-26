import 'package:component_library/component_library.dart';
import 'package:domain_entities/domain_entities.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    const List<Tome> tomes = [
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

    return Storybook(
      initialStory: 'Widgets/List/TomeListViewSepareted',
      stories: [
        Story(
          name: 'Widgets/List/TomeListViewSepareted',
          description: 'Liste des tomes avec une séparation',
          builder: (context) => Container(
            color: context.knobs.options(
              label: 'backgroundColor', 
              description: 'La couleur de fond du Scaffold',
              initial: Colors.blue.shade700,
              options: [
                  Option(label: 'bleu', value: Colors.blue.shade700),
                  Option(label: 'orange', value: Colors.orange.shade700),
                  Option(label: 'rouge', value: Colors.red.shade700),
                  Option(label: 'vert', value: Colors.green.shade700),
                  Option(label: 'violet', value: Colors.purple.shade700),
                ],
              ),
            height: 450.0,
            child: ListView.separated(
              itemBuilder: (context, index) => TomeListItem(tome: tomes[index],
              ),
              itemCount: tomes.length,
              separatorBuilder: (context, index) => const SizedBox(height: 4.0),
            ),
          ),
        ),
        Story(
          name: 'Widgets/List/TomeListItem',
          description: 'Un élement de la liste des tomes',
          builder: (context) => TomeListItem(tome: tomes[3]),
        ),
        Story(
          name: 'Widgets/Text/Synopsis',
          description: 'Le Synopsis de la serie',
          builder: (context) => const Synopsis(),
        ),
        Story(
          name: 'Widgets/Images/SerieImage',
          description: 'L\'image de la serie',
          builder: (context) => const SerieImage(),
        ),
        Story(
          name: 'Widgets/Images/CarouselImage',
          description: 'L\'image du carousel',
          builder: (context) => const CarouselImage(),
        ),
        Story(
          name: 'Widgets/Search/SearchVisual',
          description: 'La barre de recherche des mangas',
          builder: (context) => const SearchVisual(),
        ),
      ],
    );
  }
}