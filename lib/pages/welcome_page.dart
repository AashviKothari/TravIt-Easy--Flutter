import 'package:flutter/material.dart';
import 'package:travel_cubic/misc/colors.dart';
import 'package:travel_cubic/widgets/app_large_text.dart';
import 'package:travel_cubic/widgets/app_text.dart';
import 'package:travel_cubic/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_,index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/"+images[index]
                ),
              fit: BoxFit.cover
                )
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountains", size: 29,),
                      SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: AppText(
                          text: "A mobile application or app is a computer program or software application designed to run on a mobile device such as a phone, tablet, or watch.",
                        color: AppColors.textColor2,
                        size: 16,
                        )
                      ),
                      SizedBox(height: 20,),
                      ResponsiveButton(
                        width: 110,
                      )
                    ],
                  ),
                  Column(children: 
                    List.generate(3, (indexDots){
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index ==indexDots? 25:8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index ==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3)
                        ),
                      );
                    })
                  ,)
                ],
              ),
            ),
          );
      }),
    );
  }
}