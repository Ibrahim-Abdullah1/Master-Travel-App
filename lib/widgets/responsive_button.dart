import 'package:flutter/material.dart';
import 'package:master_travel_app/utlis/app_colors.dart';

class ResponsiveButton extends StatelessWidget {
  double? width;
  bool? isresponsive;
  ResponsiveButton({super.key, this.isresponsive = false, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.maincolor,
      ),
      width: width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/button-one.png"),
        ],
      ),
    );
  }
}
