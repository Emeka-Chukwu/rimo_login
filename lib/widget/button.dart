import 'package:flutter/material.dart';
import 'package:login_test/utils/config.dart';

class ButtonComp extends StatelessWidget {
  const ButtonComp({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: SizedBox(
        height: 60,
        width: Responsive.screenWidth(90, context),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(0xff4F1699),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "$title",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
