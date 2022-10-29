import 'package:flutter/material.dart';

class DefaultPasswordField extends StatelessWidget{
  const DefaultPasswordField({Key key,this.controller,this.textInputType,
    this.onSubmit,this.obscureText,this.suffixPressed,
    this.title,this.validate,this.icon}) : super(key: key);
  final String title;
  final IconData icon;
  final Function validate;
  final Function onSubmit;
  final Function suffixPressed;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText??true,
      decoration: InputDecoration(
        labelText: title,
        suffixIcon:icon != null
            ? IconButton(

          onPressed: () {
            suffixPressed();
          },
          icon: Icon(
            icon,
            color: Color(0xffD72323),          ),
        )
            : null,
        filled: true,
        labelStyle:  TextStyle(color: Color(0xffD72323),
            fontSize: 20,fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
          borderSide: BorderSide(color:  Color(0xffD72323)),
          borderRadius: BorderRadius.circular(10.0),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color:  Color(0xffD72323)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),          fillColor: Color(0xffFFF9FC    ),
        focusColor: Color(0xffFFF9FC  ),
      ),
      validator: validate,
      cursorColor: Color(0xffD72323),
      onFieldSubmitted:onSubmit ,
      keyboardType: textInputType,
      onTap: (){},

    );
  }
}