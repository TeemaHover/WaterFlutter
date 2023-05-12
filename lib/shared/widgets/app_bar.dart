import 'package:app/modules/newscreen/view/profile.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  MainAppBar({super.key, required this.title, this.color = white});
  final String title;
  final Color color;
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight,
      title: Text(
        title,
        style: FontStyles.bodyLarge.copyWith(color: color),
      ),
      shadowColor: Colors.transparent,
      backgroundColor: bgGray,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ));
          },
          icon: Image.asset('assets/images/Profile.png'),
          iconSize: 50,
        )
      ],
    );
  }
}
