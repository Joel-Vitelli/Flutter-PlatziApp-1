import 'package:flutter/material.dart';
import 'package:flutter_app/review.dart';

class ReviewList extends StatelessWidget {
  String pathImage = "assets/img/Foto2Cuadrada_liviana.png";
  String name = "Joel Vitelli";
  String detail = "Desarrollador";
  String comment = "Este es un lugar asombroso para trabajar";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(pathImage, name, detail, comment),
        Review("assets/img/carlos.jpg", "Carlos Masanett", "Jefe de Desarrollo",
            comment),
        Review("assets/img/andres.jpg", "Andres Di Stefano",
            "Gerente de Desarrollo", comment),
        Review("assets/img/alejandro.jpg", "Alejandro Peña", "Presidente",
            comment),
        Review(
            "assets/img/carlosL.jpg", "Carlos Louge", "Asesor Legal", comment),
        Review("assets/img/federico.jpg", "Federico Peña",
            "Gerente de Operaciones", comment),
        Review("assets/img/gabriel.jpg", "Gabriel Mora",
            "Gerente de Productos y Servicios", comment),
        Review("assets/img/irma.jpg", "Irma Benitez",
            "Gerente de Capital Humano", comment),
        Review("assets/img/juan.jpg", "Juan Basaldua",
            "Product & Consulting Manager", comment)
      ],
    );
  }
}
