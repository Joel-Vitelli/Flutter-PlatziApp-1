import 'package:flutter/material.dart';

import 'card_image_list.dart';
import 'gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack("Unidades de negocio"), CardImageList()],
    );
  }
}
