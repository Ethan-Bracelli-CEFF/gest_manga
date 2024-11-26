import 'package:flutter/material.dart';

class SerieImage extends StatelessWidget {
  const SerieImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'packages/component_library/lib/src/assets/images/onepiece_detail.jpg'
              ),
              fit: BoxFit.cover,
            ),
          ),
          height: 400,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.2),
              ],
            end: Alignment.center
            ),
          ),
          height: 400
        ),
        const Positioned(
          bottom: 16.0,
          left: 16.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'One piece',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Eiichirō Oda',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold
                )
              )
            ],
          ),
        ),
        IconButton(
          color: Colors.white,
          icon: const Icon(
            Icons.clear, 
            size: 40.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}