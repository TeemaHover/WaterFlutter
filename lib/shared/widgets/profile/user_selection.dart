import 'package:app/shared/widgets/profile/selection_tile.dart';
import 'package:flutter/material.dart';

class UserSelection extends StatefulWidget {
  const UserSelection({super.key});

  @override
  State<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Хэрэглэгч"),
          SelectionTile(icon: Icons.person, txt: "Хувийн мэдээлэл"),
          SelectionTile(icon: Icons.stadium, txt: "Аккаунт статистик"),
          Text("Хэрэглэгч"),
          SelectionTile(icon: Icons.person_outline, txt: "Найзаа урих"),
          SelectionTile(icon: Icons.code, txt: "Reedem code"),
        ],
      ),
    );
  }
}
