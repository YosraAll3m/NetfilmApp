import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netfilm/ui/auth/signup/signup.dart';
import 'package:netfilm/widgets/navigation.dart';
import '../../../../widgets/default_button.dart';


class SignOrCreate extends StatelessWidget{
  const SignOrCreate({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 150,),
            Center(
              child: Lottie.asset("assets/onboarding3.json",animate: true,repeat: true,
              ),
            ),
            Spacer() ,
            DefaultButton(title: "Login",color: Color(0xffD72323 ),
                onTaped:(){
                  navigateTo(context, SignUpScreen());

                }
            ),
            SizedBox(height: 20,),
            DefaultButton(title: "Create Account",color: Colors.black87,
                onTaped:(){
                 navigateTo(context, SignUpScreen());
                }
            ),


          ],
        ),
      ),
    );
  }
}