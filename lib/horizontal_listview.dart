import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/categories/batery.png',
            image_caption: 'Batery',
          ),
          Category(
            image_location: 'images/categories/brakes.png',
            image_caption: 'Brakes',
          ),
          Category(
            image_location: 'images/categories/engine_components.png',
            image_caption: 'eng.components',
          ),
          Category(
            image_location: 'images/categories/rims.png',
            image_caption: 'Rims',
          ),
          Category(
            image_location: 'images/categories/steering_wheel.png',
            image_caption: 'str.Wheel',
          ),
          // Category(
          //   image_location: 'images/categories/suspension.png',
          //   image_caption: 'Suspension',
          // ),
          Category(
            image_location: 'images/categories/taillights.png',
            image_caption: 'Tailights',
          ),
          Category(
            image_location: 'images/categories/tires.png',
            image_caption: 'Tires',
          ),
          Category(
            image_location: 'images/categories/turbo.png',
            image_caption: 'Turbos',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption
});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2),
      child: InkWell(onTap: (){},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(image_location,
              width: 80,
              height: 50,
            ),
            subtitle: Container(height: 15,
                alignment: Alignment.center,
                child: Text(image_caption)),
          ),
        ),
      ),
    );
  }
}

