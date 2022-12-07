import 'package:flutter/material.dart';

import '../model/Pokemon.dart';

class ShapedText extends StatelessWidget {
  final String text;

  const ShapedText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white54,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(12.0))),
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white, ),
          ),
        )
      ],
    );
  }
}
