import 'package:flutter/material.dart';

class AppBmi {
  AppBmi(
    this.color,
    this.title,
    this.description,
    this.rangeStart,
    this.rangeEnd,
  );

  final Color color;
  final String title;
  final String description;
  final double rangeStart;
  final double rangeEnd;
}

class AppBmiStates {
  AppBmiStates._();

  static final List<AppBmi> _states = [
    AppBmi(
        Colors.blue.shade200,
        'UNDERWEIGHT',
        'Try eating more, exercises may improve your appetite.',
        double.negativeInfinity,
        18.5,
    ),
    AppBmi(
        Colors.green.shade400,
        'NORMAL',
        "You're good!",
        18.5,
        25.0
    ),
    AppBmi(
        Colors.yellow.shade600,
        'OVERWEIGHT',
        'Try to implement some exercises and eat less junk food.',
        25.0,
        30.0
    ),
    AppBmi(
        Colors.orange,
        'OBESE',
        'You need a diet, avoid elevators and escalators, no more junk food and coke!',
        30.0,
        35.0
    ),
    AppBmi(
        Colors.redAccent,
        'EXTREMELY OBESE',
        "Relax we don't want you to have a heart attack, but You have to see a doctor and plan a diet!",
        35.0,
        double.infinity
    ),
  ];

  static AppBmi getBmi(double score) {
    AppBmi holder = _states[0];
    for (final i in _states) {
      if (i.rangeStart <= score && i.rangeEnd > score) {
        holder = i;
        break;
      }
    }

    return holder;
  }
}
