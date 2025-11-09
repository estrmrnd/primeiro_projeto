import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

class Difficulty extends StatelessWidget {
  final int difficultyLevel;

  const Difficulty({
    required this.difficultyLevel,
    super.key,
    required this.widget,
  });

  final Task widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 1)
              ? Colors.yellowAccent
              : Colors.black26,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 2)
              ? Colors.yellowAccent
              : Colors.black26,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 3)
              ? Colors.yellowAccent
              : Colors.black26,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 4)
              ? Colors.yellowAccent
              : Colors.black26,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 5)
              ? Colors.yellowAccent
              : Colors.black26,
        ),
      ],
    );
  }
}