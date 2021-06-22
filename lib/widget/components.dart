import 'package:flutter/material.dart';
import 'package:login_test/utils/config.dart';
import 'package:login_test/utils/margin.dart';

class WrapContainer extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Color color;
  final Color iconColor;
  final bool showBorder;
  const WrapContainer({
    Key? key,
    required this.iconData,
    required this.title,
    required this.color,
    required this.iconColor,
    this.showBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
      child: Container(
        height: 142,
        width: Responsive.screenWidth(40, context),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YMargin(height: Responsive.screenHeight(1, context)),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              !showBorder
                  ? Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          iconData,
                          color: iconColor,
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: iconColor,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: iconColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              iconData,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
              XMargin(width: 20),
            ]),
            YMargin(height: Responsive.screenHeight(1, context)),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.8,
                  color: Color(0xff401A6D),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
