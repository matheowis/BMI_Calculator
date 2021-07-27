import 'package:bmi_calculator/constants/AppBmiStates.dart';
import 'package:bmi_calculator/constants/AppColors.dart';
import 'package:bmi_calculator/constants/AppStyles.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    Key? key,
    this.score = 0.0,
  }) : super(key: key);

  final double score;

  AppBmi get bmiState => AppBmiStates.getBmi(score);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text('Your Result',textAlign: TextAlign.left,style: AppStyles.bigLabelText,),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(12),
                  color: AppColors.active,
                ),
                // color: AppColors.active,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(bmiState.title,style: AppStyles.getScoreText(bmiState),),
                    Text(score.toStringAsFixed(1),style: AppStyles.scoreNumber),
                    Text(bmiState.description,style: AppStyles.commonText,textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(onPressed: () => Navigator.pop(context), label: 'RE-CALCULATE'),

        ],
      ),
    );
  }
}
