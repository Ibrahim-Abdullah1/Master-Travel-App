import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  Color color;
  String text;
  AppText({super.key,
  this.color=Colors.black54,
  this.size=16,
  required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
