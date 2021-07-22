import 'package:flutter/material.dart';

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
          color: active? Color(0xFF302B3D):Color(0xFF141430),
        ),
        child: this.child,
      ),
    );
  }
}
