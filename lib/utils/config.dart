import 'package:flutter/cupertino.dart';

class Responsive {
  static double screenHeight(double height, BuildContext context) {
    var portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    var viewportHeight = portrait
        ? MediaQuery.of(context).size.height
        : MediaQuery.of(context).size.width;
    return viewportHeight * (height / 100);
  }

  static double screenWidth(double width, BuildContext context) {
    var portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    var viewportHeight = portrait
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.width;
    return viewportHeight * (width / 100);
  }
}
