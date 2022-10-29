import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/default_text_feild.dart';
import '../../../widgets/navigation.dart';
import '../../main_screen/main_screen.dart';
import '../signup/signup.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            image: DecorationImage(
          // fit: BoxFit.cover,
          image: AssetImage("assets/shadow.png"),
        )),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "welcome \n \t \tback".toUpperCase(),
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              basicField(),
              DefaultButton(
                color: Color(0xffD72323),
                title: "login",
                onTaped: () {
                  navigateTo(context, MainScreen());
                },
              ),
              Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54)),
                    TextSpan(
                        text: ' Sign up',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            navigateTo(context, SignUpScreen());
                          },
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xffD72323),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget basicField() {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        DefaultTextFeild(
          text: "email",
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          validator: (String value) {
            if (value.isEmpty) {
              return " Email is required";
            }
            return null;
          },
          icon: IconButton(
            icon: Icon(
              Icons.email,
              color: Color(0xffD72323),
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: 15,
        ),
        DefaultTextFeild(
            obscureText: obscureText,
            text: "Password",
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            validator: (String value) {
              if (value.isEmpty) {
                return " Password is required";
              }
              return null;
            },
            icon: obscureText
                ? IconButton(
                    icon: Icon(
                      Icons.visibility_off,
                      color: Color(0xffD72323),
                    ),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(
                      Icons.visibility,
                      color: Color(0xffD72323),
                    ),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  )),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
