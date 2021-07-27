// import 'dart:ui';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants/AppStyles.dart';
import 'package:bmi_calculator/number_set_section.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'my_box_container.dart';
import 'gender_gesture.dart';
import 'dart:math';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender activeGender = Gender.NONE;
  int height = 180;
  int weight = 74;
  int age = 28;

  void setHeight(double h) {
    setState(() {
      height = h.round();
    });
  }

  void setWeight(int value) {
    setState(() {
      weight = value;
    });
  }

  void setAge(int value) {
    setState(() {
      age = value;
    });
  }

  void pickGender(Gender gender) {
    setState(() {
      activeGender = gender;
    });
  }

  void handleCalculate(){
    double bmi = weight / (pow(height/100,2));
    int sex = activeGender == Gender.MALE ? 1:0;
    double score = age <= 15 ?
    1.51*bmi - 0.7*age - 3.6*sex + 1.4 :
        1.2 * bmi + 0.23 * age - 10.8 * sex - 5.4;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultsPage(

          score: bmi,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                GenderGesture(
                  onPressed: pickGender,
                  gender: Gender.MALE,
                  current: activeGender,
                ),
                GenderGesture(
                  onPressed: pickGender,
                  gender: Gender.FEMALE,
                  current: activeGender,
                ),
              ],
            ),
          ),
          MyBoxContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: AppStyles.labelText,
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(height.toString(), style: AppStyles.bigLabelText),
                    Text('cm', style: AppStyles.labelText),
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  onChanged: setHeight,
                  min: 100.0,
                  max: 220.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                NumberSetSection(
                  label: 'WEIGHT',
                  onChange: setWeight,
                  value: weight,
                ),
                NumberSetSection(
                  label: 'AGE',
                  onChange: setAge,
                  value: age,
                ),
              ],
            ),
          ),
          BottomButton(
            onPressed: handleCalculate,
            label: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
