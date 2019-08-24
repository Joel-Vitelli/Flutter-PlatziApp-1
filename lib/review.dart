import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/Foto2Cuadrada_liviana.png";
  String name = "Joel Vitelli";
  String detail = "1 revied 5 photos";
  String comment = "Este es un lugar asombroso para trabajar";

  //Constructor
  Review(this.pathImage, this.name, this.detail, this.comment);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontWeight: FontWeight.w900, fontSize: 13.0),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        detail,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", color: Color(0xFFa3a5a7), fontSize: 13.0),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0, fontFamily: "Lato"),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 10.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: <Widget>[photo, userDetail],
    );
  }
}
