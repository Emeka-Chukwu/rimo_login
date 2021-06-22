import 'package:flutter/material.dart';

class XMargin extends StatelessWidget {
  const XMargin({
    Key? key,
    required this.width,
  }) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

class YMargin extends StatelessWidget {
  const YMargin({
    Key? key,
    required this.height,
  }) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
