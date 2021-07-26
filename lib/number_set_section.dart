import 'package:flutter/material.dart';

import 'constants/AppStyles.dart';
import 'control_buttons.dart';
import 'my_box_container.dart';

class NumberSetSection extends StatelessWidget {
  const NumberSetSection({
    Key? key,
    required this.label,
    required this.onChange,
    required this.value,
  }) : super(key: key);

  final String label;
  final void Function(int finalValue) onChange;
  final int value;

  void setValue(int val) => onChange(val+value);

  @override
  Widget build(BuildContext context) {
    return MyBoxContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: AppStyles.labelText,
          ),
          Text(
            value.toString(),
            style: AppStyles.bigLabelText,
          ),
          ControlButtons(onChange: setValue),
        ],
      ),
    );
  }
}
