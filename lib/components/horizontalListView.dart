import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'images/catering.jpeg',
              image_caption: 'Food'),
          Category(
              image_location: 'images/elec.jpeg',
              image_caption: 'Power'),
          Category(
              image_location: 'images/laundry.jpeg',
              image_caption: 'Dobbi'),
          Category(
              image_location: 'images/laundry.jpeg',
              image_caption: 'Dobbi'),
          Category(
              image_location: 'images/laundry.jpeg',
              image_caption: 'Dobbi'),
          Category(
              image_location: 'images/laundry.jpeg',
              image_caption: 'Dobbi'),







        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category(
      {super.key, required this.image_location, required this.image_caption});

  final String image_location;
  final String image_caption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 70,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(image_caption,),

            ),
            ),
          ),
        ),
      ),
    );
  }
}
