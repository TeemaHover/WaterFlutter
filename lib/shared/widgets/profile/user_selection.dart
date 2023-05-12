import 'package:app/shared/index.dart';
import 'package:app/shared/widgets/profile/selection_tile.dart';
import 'package:app/theme/text_theme.dart';
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
        children: [
          Text(
            "Хэрэглэгч",
            style: FontStyles.bodySmall,
          ),
          space24,
          SelectionTile(icon: Icons.person, txt: "Хувийн мэдээлэл"),
          space16,
          SelectionTile(icon: Icons.stadium, txt: "Аккаунт статистик"),
          space32,
          Text(
            "Бэлэг урамшуулал",
            style: FontStyles.bodySmall,
          ),
          space24,
          SelectionTile(icon: Icons.person_outline, txt: "Найзаа урих"),
          space16,
          SelectionTile(icon: Icons.code, txt: "Reedem code"),
        ],
      ),
    );
  }
}
