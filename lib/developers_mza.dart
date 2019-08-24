import 'package:flutter/material.dart';

class DevelopersMza extends StatelessWidget {
  String pathImage = "assets/mza/mza.jpg";

  DevelopersMza(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final image = Container(
        width: 80.0,
        height: 80.0,
        margin:
            EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0, bottom: 10.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          ),
        ));

    return Row(
      children: <Widget>[
        image,
      ],
    );
  }
}
