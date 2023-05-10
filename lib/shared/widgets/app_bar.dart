import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
      backgroundColor: Colors.white,
    );
  }
}
