import 'package:app/shared/constants/index.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer(
      {super.key,
      this.title,
      this.onTap,
      this.axisCount = 2,
      this.isScroll = const NeverScrollableScrollPhysics(),
      required this.children});
  final String? title;
  final Function()? onTap;
  final List<Widget> children;
  final ScrollPhysics isScroll;
  final int axisCount;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: isScroll,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              title != null ? Text(title ?? '') : const SizedBox(),
              onTap != null
                  ? IconButton(
                      onPressed: onTap,
                      icon: const Icon(Icons.arrow_forward_ios),
                    )
                  : const SizedBox(),
            ],
          ),
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: (large),
                crossAxisSpacing: (large),
                childAspectRatio: 4 / (axisCount == 2 ? 5 : axisCount),
                crossAxisCount: axisCount),
            shrinkWrap: true,
            children: children,
          )
        ],
      ),
    );
  }
}
