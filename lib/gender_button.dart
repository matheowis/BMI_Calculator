import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  const GenderButton({
    Key? key,
    required this.onPressed,
    this.title = "",
    this.icon,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ),
          )
        ],
      ),
    );
  }
}
