import 'package:flutter/material.dart';
import 'package:master_travel_app/widgets/app_large_text.dart';
import 'package:master_travel_app/widgets/app_text.dart';
import 'package:master_travel_app/widgets/responsive_button.dart';

import '../utlis/app_colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
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
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      opacity: 47.0,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/" + images[index],
                      ))),
              child: Container(
                margin: const EdgeInsets.only(top: 140, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(
                          text: "Mountains",
                          size: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 250,
                            child: AppText(
                              text:
                                  "Mountains hike gives you an increadible sense of freedom along with endurance tests",
                              color: Colors.black45,
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                        ResponsiveButton(
                          width: 120,
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          height: index == indexDots ? 25 : 8,
                          width: 8,
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? AppColors.maincolor
                                  : AppColors.maincolor.withOpacity(0.3)),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
