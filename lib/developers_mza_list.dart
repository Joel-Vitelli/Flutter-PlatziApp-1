import 'package:flutter/material.dart';
import 'developers_mza.dart';

class DevelopersMzaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DevelopersMza("assets/mza/carlos.jpg", "Carlos Masanett", " Jefe de Desarrollo", 1),
            DevelopersMza("assets/mza/Foto2Cuadrada_liviana.png", "Joel Vitelli", "Desarrollador", 1),
            DevelopersMza("assets/mza/fabioM.jpg", "Fabio Muñoz", "Infraestructura y Soporte", 0),
            DevelopersMza("assets/mza/pabloP.jpg", "Pablo Palta", "Desarrollador", 1),
            DevelopersMza("assets/mza/andresC.jpg", "Andres Coppola", "Desarrollador", 0),
            DevelopersMza("assets/mza/fabriB.jpg", "Fabri Bayarri", "Desarrollador", 0),
            DevelopersMza("assets/mza/juanP.jpg", "Juan Pablo Quinteros", "Desarrollador", 1),
            DevelopersMza("assets/mza/lucasL.jpg", "Lucas Lattuca", "Desarrollador", 0),
            DevelopersMza("assets/mza/majoM.jpg", "Maria Jose Molina", "Analista de sistemas", 1)

          ],
        ),
      ],
    );
  }
}
