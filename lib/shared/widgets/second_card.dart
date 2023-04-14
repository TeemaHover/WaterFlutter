import 'package:flutter/material.dart';

class SecondCardWidget extends StatelessWidget {
  const SecondCardWidget({super.key, required this.name, required this.image});

  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(image),
        Text(name),
      ],
    );
  }
}
