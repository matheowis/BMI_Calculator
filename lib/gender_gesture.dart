import 'package:bmi_calculator/constants/AppStyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  MALE,FEMALE,NONE
}

class GenderGesture extends StatelessWidget {
  const GenderGesture({
    Key? key,
    required this.onPressed,
    required this.gender,
    required this.current,
  }) : super(key: key);

  final void Function(Gender) onPressed;
  final Gender gender;
  final Gender current;

  IconData getIcon(){
    if(gender == Gender.MALE){
      return FontAwesomeIcons.mars;
    }else if (gender == Gender.FEMALE){
      return  FontAwesomeIcons.venus;
    }else{
      return FontAwesomeIcons.random;
    }
  }

  String getTitle(){
    if(gender == Gender.MALE){
      return 'MALE';
    }else if (gender == Gender.FEMALE){
      return  'FEMALE';
    }else{
      return 'NONE';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onPressed(gender),
        child: Container(
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: gender == current? Color(0xFF302B3D):Color(0xFF141430),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                getIcon(),
                size: 80.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                getTitle(),
                style: AppStyles.labelText,
              )
            ],
          ),
        ),
      ),
    );
  }
}

