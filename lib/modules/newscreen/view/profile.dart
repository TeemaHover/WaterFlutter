import "package:app/shared/widgets/profile/user_selection.dart";
import "package:flutter/material.dart";

import "../../../shared/widgets/profile/rank.dart";

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Column(
          children: const [
            Rank(),
            UserSelection(),
          ],
        ),
      ),
    ));
  }
}
