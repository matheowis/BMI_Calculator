// import 'dart:ui';
import 'package:bmi_calculator/constants/AppStyles.dart';
import 'package:bmi_calculator/number_set_section.dart';
import 'package:flutter/material.dart';
import 'my_box_container.dart';
import 'gender_gesture.dart';

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
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/result');
            },
            child: Container(
              color: Colors.pink,
              height: 80.0,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: AppStyles.calculate,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
