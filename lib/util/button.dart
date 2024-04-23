import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final icon;
  final String number;

  const MyButton({
    super.key,
    this.icon,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        const SizedBox(
          height: 40,
        ),
        Text(number),
      ],
    );
  }
}
