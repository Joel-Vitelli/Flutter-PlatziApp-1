import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  String descriptionText = "Somos una empresa de Servicios Integrales de TI y Recursos Humanos, miembros activos de la CESSI Argentina (Cámara de Empresas de Software y Servicios Informáticos), de su Red Internacional de Negocios Tecnológicos y del Polo IT Buenos Aires. Disponemos de una casa central ubicada en Buenos Aires y una oficina en Mendoza.";
  String pathImage = "assets/img/Foto2Cuadrada_liviana.png";
  String name = "Joel Vitelli";
  String detail = "1 revied 5 photos";
  String comment = "Este es un lugar asombroso para trabajar";

  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: EdgeInsets.only(
          top: 10,
          right: 20.0,
          left: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(top: 250.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Colors.yellow,
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 250.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Colors.yellow,
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 250.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Colors.yellow,
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 250.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star_half, star_border],
        )
      ],
    );


    return Column(
      children: <Widget>[
        title_stars,
        description,
      ],
    );
  }
}
