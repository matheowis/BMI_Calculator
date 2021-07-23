import 'package:flutter/material.dart';
import 'constants/AppColors.dart';

class MyBoxContainer extends StatelessWidget {
  const MyBoxContainer({
    Key? key,
    this.child,
    this.active = true,
}) : super(key: key);

  final Widget? child;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: active? AppColors.active:AppColors.inactive,
        ),
        child: this.child,
      ),
    );
  }
}


