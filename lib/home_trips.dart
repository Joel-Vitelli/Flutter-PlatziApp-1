import 'package:flutter/material.dart';
import 'package:flutter_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String descriptionText = "Somos una empresa de Servicios Integrales de TI y Recursos Humanos, miembros activos de la CESSI Argentina (Cámara de Empresas de Software y Servicios Informáticos), de su Red Internacional de Negocios Tecnológicos y del Polo IT Buenos Aires. Disponemos de una casa central ubicada en Buenos Aires y una oficina en Mendoza.";
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Consensus", 4, descriptionText),
            ReviewList()
          ],
        ),
        HeaderAppbar()
      ],
    );
  }

}