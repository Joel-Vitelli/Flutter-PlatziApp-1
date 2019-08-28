import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  dynamic iconE = Icons.favorite_border;

  void onPressedFav(){
    setState(() {
      if(iconE == Icons.favorite_border){
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Agregado a favoritos")));
        iconE = Icons.favorite;
      }else{
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Eliminado de favoritos")));
        iconE = Icons.favorite_border;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(iconE)
    );
  }
}
