import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netfilm/ui/onboarding/presentations/onboarding.dart';
import 'package:netfilm/widgets/navigation.dart';



class SplashScreen extends StatefulWidget{
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Lottie.asset("assets/splash.json",animate: true,repeat: true,
              controller: controller,
              onLoaded: (value) {
                controller..duration = value.duration
                  ..forward().whenComplete(() {
                    navigateTo(context, OnBoardingScreen());
                  });
              }
          )



      ),
    );
  }
}