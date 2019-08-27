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
        Icons.mail,
        color: Colors.white,
      );
    } else {
      mailStatus = Icon(
        Icons.mail_outline,
        color: Colors.white,
      );
    }

    final image = Container(
        width: 80.0,
        height: 80.0,
        margin:
        EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.red
        ),
        margin: EdgeInsets.only(
            top: 20.0,
            right: 10.0,
            left: 10.0,
            bottom: 20.0
        ),
        child:
        mailStatus
    );

    return Card(
      child: Row(
        children: <Widget>[
          image,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                nameDev,
                description
              ],
            ),
          ),
          icono_mail_open
        ],
      ),
    );
  }
}
