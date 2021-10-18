import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';

class AppButtons extends StatelessWidget {
  final double? fontSize;
  final IconData icon;
  final Function()? onTop;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? textColor;
  final String? text;

  const AppButtons({Key? key,
    this.fontSize = 20,
    required this.icon,
    this.text,
    this.onTop,
    this.iconColor = AppColor.mainColor,
    this.backgroundColor = Colors.white,
    this.textColor = AppColor.mainColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundColor,
            ),
            child: Icon(
              icon, size: 30, color: iconColor,
            ),
          ),
          text!=null?Text(
            text!,
            style: TextStyle(
              fontSize: 14,
              color: textColor,
            ),
          ):Container()
        ],
      ),
    );
  }
}
