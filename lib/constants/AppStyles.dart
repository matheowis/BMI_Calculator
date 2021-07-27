import 'package:bmi_calculator/constants/AppBmiStates.dart';
import 'package:flutter/material.dart';
import 'AppColors.dart';

class AppStyles{
  AppStyles._();

  static const TextStyle labelText = TextStyle(
      fontSize: 18.0,
      color:AppColors.labelText
  );

  static const TextStyle calculate = TextStyle(
    fontSize: 24.0,
    color:Colors.white,
    fontWeight: FontWeight.bold
  );

  static const TextStyle bigLabelText = TextStyle(
      fontSize: 50.0,
      fontWeight: FontWeight.w900,
  );

  static const TextStyle scoreNumber = TextStyle(
      fontSize: 100.0,
      fontWeight: FontWeight.w900,
  );

  static const TextStyle commonText = TextStyle(
      fontSize: 18.0,
      color:Colors.white
  );

  static TextStyle getScoreText(AppBmi appBmi){
    return TextStyle(
      color: appBmi.color,
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
    );
  }
}