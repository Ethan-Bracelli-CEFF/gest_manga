import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';
import 'package:manga_list/manga_list.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tomes = context.read<MangaProvider>().items;

    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SerieImage(),
          const SizedBox(
            height: 24.0,
          ),
          const Synopsis(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => TomeListItem(
                tome: tomes[index],
              ),
              itemCount: tomes.length,
              separatorBuilder: (context, index) => const SizedBox(height: 4.0),
            ),
          ),
        ],
      ),
    );
  }
}
