import 'package:flutter/material.dart';

import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/negocio/c.jpg"),
          CardImage("assets/negocio/ch.jpg"),
          CardImage("assets/negocio/kryon.jpg"),
          CardImage("assets/negocio/ps.jpg"),
          CardImage("assets/negocio/s.jpg"),
          CardImage("assets/negocio/sf.jpg")
        ],
      ),
    );
  }
}
