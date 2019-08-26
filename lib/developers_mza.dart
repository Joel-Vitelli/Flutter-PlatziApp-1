import 'package:flutter/material.dart';

class DevelopersMza extends StatelessWidget {

  String pathImage = "assets/mza/mza.jpg";
  String name = "Name";
  String descriptionTxt = "Description text";
  int flag = 0;
  dynamic mailStatus = "";


  DevelopersMza(this.pathImage, this.name, this.descriptionTxt, this.flag);

  @override

  Widget build(BuildContext context) {
    if (flag == 1) {
      mailStatus = Icon(
          Icons.mail
      );
    } else {
      mailStatus = Icon(
          Icons.mail_outline
      );
    }


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
        )
    );

    final nameDev = Container(
      child: Text(
        name,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final description = Container(
      child: Text(
        descriptionTxt,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            color: Colors.grey
        ),
      ),
    );

    final icono_mail_open = Container(
        height: 40.0,
        width: 40.0,
        margin: EdgeInsets.only(
            top: 10.0,
            right: 10.0,
            left: 10.0,
            bottom: 10.0
        ),
        child:
        mailStatus
    );

    /*final icono_mail_closed = Container(
      height: 40.0,
      width: 40.0,
      margin: EdgeInsets.only(
          top: 10.0,
          right: 10.0,
          left: 10.0,
          bottom: 10.0
      ),
      child: Icon(
          Icons.mail
      ),
    );*/

    return Row(
      children: <Widget>[
        image,
        Column(
          children: <Widget>[
            nameDev,
            description
          ],
        ),
        icono_mail_open
      ],
    );
  }
}
