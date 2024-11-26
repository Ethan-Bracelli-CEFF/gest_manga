import 'package:domain_entities/domain_entities.dart';
import 'package:flutter/material.dart';

class TomeListItem extends StatelessWidget {
  const TomeListItem({required this.tome, super.key});

  final Tome tome;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Image.asset('packages/component_library/lib/src/assets/images/${tome.imageUrl}',
          height: 120.0,
          ),
          const SizedBox(width: 16.0),
           Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                tome.titre,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 14.0,),
              Text(tome.parution,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}