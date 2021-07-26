import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants/AppColors.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.back,
          sliderTheme: SliderTheme.of(context).copyWith(
              thumbColor: AppColors.pink,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              activeTrackColor: Colors.white,
              inactiveTrackColor: AppColors.inactiveSlider,
              overlayColor: AppColors.pink.withOpacity(0.16),
          ),
          textTheme: TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
            ),
          )),
      // home: InputPage(),
      initialRoute: '/',
      routes: {
        '/':(context) => InputPage(),
        '/result':(context) => ResultsPage(),
      },

    );
  }
}
