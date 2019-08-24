import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final description = Container(
      margin: EdgeInsets.only(top: 10, right: 20.0, left: 20.0),
      child: Text("""
    Somos una empresa de Servicios
    Integrales de TI y Recursos Humanos,
    miembros activos de la CESSI Argentina
    (Cámara de Empresas de Software
    y Servicios
    Informáticos), de su Red Internacional
    de Negocios Tecnológicos y del Polo IT
    Buenos Aires. Disponemos de una casa
    central ubicada en Buenos Aires y una
    oficina en Mendoza.""",
        style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.black,
            letterSpacing: 0.5),
        textAlign: TextAlign.left,
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 250.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Colors.yellow,
      ),
    );

    final title_stars = Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 250.0, left: 20.0, right: 20.0),
              child: Text(
                "Consensus",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              children: <Widget>[star, star, star, star, star],
            )
          ],
        ),
        Row(
          children: <Widget>[description],
        )
      ],
    );

    return title_stars;
  }
}
