
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netfilm/ui/auth/sign_or_create/sign_or_create.dart';
import 'package:netfilm/widgets/navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../widgets/default_button.dart';

class Boarding{
  final  String image;
  final String title;
  final String subtitle;

  Boarding({
     this.image,
     this.title,
     this.subtitle,


  });
}
class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardcontroller=PageController();

  List<Boarding>boarding=[
    Boarding(image: "assets/onboarding2.json", title: "Unlimited Movies ,Tv Shows ",
        subtitle:"For The First Time , You Can Download Unlimited Movies ,Tv Shows and More just  throught Netfilm Application "),
    Boarding(image: "assets/onboarding3.json", title: "Watch everywhere",subtitle: " You Can Watch Unlimited Movies ,Tv Shows and More just  throught Netfilm Application"),
    Boarding(image: "assets/onboarding4.json", title: "Download and watch offline",subtitle:" You Can Download Unlimited Movies ,Tv Shows and More just  throught Netfilm Application"),
  ];
  bool isLast=false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: boardcontroller
              ,itemBuilder:(context,index)=>onBoardingItem(boarding[index]),
              itemCount:boarding.length,
              onPageChanged: (int index){
                if(index==boarding.length-1){
                  setState(() {
                    isLast=true;
                  });
                }else{
                  setState(() {
                    isLast=false;
                  });
                }

              },),
          ),

        ],
      ),
    );
  }

  Widget onBoardingItem(Boarding model)=>Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),

            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(onTap: (){
                     navigateTo(context, SignOrCreate());
                },
                    child:isLast?Text(""):
                    Text("Skip",
                        style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold
                            ,color:Color(0xffD72323 )))
                ),
              ],
            ),

            SizedBox(height: 80,),
            Center(
                child: Lottie.asset(model.image,animate: true,repeat: true,)
            ),
            SizedBox(height: 20,),

            Text(model.title,
                style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold
                    ,color: Color(0xffD72323 ))),
            SizedBox(height: 20,),

            Text(model.subtitle,
              style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w500
                  ,color: Colors.black54),),
            Spacer(),
            SmoothPageIndicator(
              controller: boardcontroller,
              count:3,
              effect:WormEffect(dotColor:Colors.grey.shade300,spacing: 7,
                dotWidth:  18.0,
                activeDotColor:Color(0xffD72323 ),
                dotHeight: 15,

              ),  ),
            SizedBox(height: 20,),

            DefaultButton(onTaped: (){
              navigateTo(context,SignOrCreate());
            },title: "get start",color: Color(0xffD72323 ),),

          ],
        ),
      ),    ],


  );


}