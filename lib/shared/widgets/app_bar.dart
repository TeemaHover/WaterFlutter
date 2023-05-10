import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  MainAppBar({super.key, required this.title});
  final String title;
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      shadowColor: Colors.transparent,
      backgroundColor: bgGray,
    );
  }
}
