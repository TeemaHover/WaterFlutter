import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddContainerWidget extends StatelessWidget {
  const AddContainerWidget(
      {super.key, required this.title, required this.children});
  final List<Widget> children;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: FontStyles.titleMedium),
          space4,
          space8,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          )
        ],
      ),
    );
  }
}
