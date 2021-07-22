import 'package:flutter/material.dart';
import 'my_box_container.dart';
import 'gender_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String activeGender = 'NONE';

  void Function() pickGender(String gender) {
    return () {
      setState(() {
        activeGender = gender;
      });
    };
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
                MyBoxContainer(
                  active: activeGender == 'MALE',
                  child: GenderButton(
                    onPressed: pickGender("MALE"),
                    title: 'MALE',
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
                MyBoxContainer(
                  active: activeGender == 'FEMALE',
                  child: GenderButton(
                    onPressed: pickGender("FEMALE"),
                    title: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MyBoxContainer(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MyBoxContainer(),
                MyBoxContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
