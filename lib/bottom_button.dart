import 'package:flutter/material.dart';

import 'constants/AppStyles.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  final void Function() onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.pink,
        height: 80.0,
        child: Center(
          child: Text(
            label,
            style: AppStyles.calculate,
          ),
        ),
      ),
    );
  }
}
