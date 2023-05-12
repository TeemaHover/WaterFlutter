import "package:app/shared/index.dart";
import "package:app/shared/widgets/profile/user_selection.dart";
import "package:app/shared/widgets/second_appbar.dart";
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
        appBar: SecondAppBar(title: ''),
        body: Container(
          height: defaultHeight(context),
          padding: EdgeInsets.symmetric(horizontal: origin),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Rank(),
                space64,
                UserSelection(),
              ],
            ),
          ),
        ));
  }
}
