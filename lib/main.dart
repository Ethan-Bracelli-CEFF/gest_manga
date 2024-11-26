import 'package:flutter/material.dart';
import 'package:manga_list/manga_list.dart';

void main() {
  runApp(const GestManga());
}

class GestManga extends StatelessWidget {
  const GestManga({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => MangaProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GestManga',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const DetailScreen(),
      ),
    );
  }
}
