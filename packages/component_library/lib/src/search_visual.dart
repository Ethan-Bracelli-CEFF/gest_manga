import 'package:flutter/material.dart';

class SearchVisual extends StatelessWidget {
  const SearchVisual({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.5),
          color: const Color.fromARGB(255, 54, 58, 219),
        ),
        height: 45,
        padding: const EdgeInsets.all(8.0),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.search, color: Colors.white, size: 18.0),
            SizedBox(width: 4.0),
            Text(
              "Rechercher...",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
