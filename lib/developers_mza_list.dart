import 'package:flutter/material.dart';
import 'developers_mza.dart';

class DevelopersMzaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DevelopersMza("assets/mza/Foto2Cuadrada_liviana.png", "Joel Vitelli",
            "Desarrollador", 1),
        DevelopersMza("assets/mza/carlos.jpg", "Carlos Masanett",
            " Jefe de Desarrollo", 1),
        DevelopersMza("assets/mza/mza.jpg", "Mza", "Desarrollador", 0),
        DevelopersMza("assets/mza/0.jpg", "Pablo Palta", "Desarrollador", 1)
      ],
    );
  }
}
