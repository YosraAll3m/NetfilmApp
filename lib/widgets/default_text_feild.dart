import 'package:flutter/material.dart';


class DefaultTextFeild extends StatelessWidget {
  final String text;
  bool obscureText;
  final TextEditingController controller;
  final IconButton icon;
  final TextInputType keyboardType;
  final Function validator;

  DefaultTextFeild(
      {this.controller,
        this.icon,
        this.keyboardType,
        this.text,
        this.obscureText,
        this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      cursorColor: Color(0xffD72323),
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText ?? true,
      decoration: InputDecoration(
        filled: true,
          fillColor: Colors.white,
          suffixIcon: icon,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.white24,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.white24,
              )),
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey)),
    );
  }
}
