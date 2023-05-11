import 'package:app/shared/constants/colors.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';

class SecondAppBar extends StatelessWidget with PreferredSizeWidget {
  SecondAppBar({super.key, required this.title, this.color = textBlack});
  final String title;
  final Color color;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: textBlack,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        title,
        style: FontStyles.bodyMedium.copyWith(color: color),
      ),
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
    );
  }
}
