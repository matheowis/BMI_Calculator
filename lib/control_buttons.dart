import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'round_icon_button.dart';

class ControlButtons extends StatelessWidget {
  const ControlButtons({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  final void Function(int value) onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundIconButton(
          onPressed: ()=> onChange(-1),
          icon: FontAwesomeIcons.minus,
        ),
        SizedBox(
          width: 10.0,
        ),
        RoundIconButton(
          onPressed: ()=> onChange(1),
          icon: FontAwesomeIcons.plus,
        ),
      ],
    );
  }
}
