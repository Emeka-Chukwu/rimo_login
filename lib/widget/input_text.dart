import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.controller,
    required this.title,
    this.maxLlines = 1,
    this.obscure = false,
  }) : super(key: key);
  final TextEditingController controller;
  final String title;
  final int maxLlines;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: (str) => print(controller.text),
      maxLines: maxLlines,
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade900, width: 1.0),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade900, width: 2.0),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE9D6FF), width: 1.0),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE9D6FF), width: 2.0),
            borderRadius: BorderRadius.circular(8),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE9D6FF), width: 2.0),
            borderRadius: BorderRadius.circular(8),
          ),
          labelText: "$title",
          labelStyle: TextStyle(
            color: Colors.black,
          )),
    );
  }
}
