import 'package:app/shared/widgets/main_button.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Rank extends StatefulWidget {
  const Rank({super.key});

  @override
  State<Rank> createState() => _RankState();
}

class _RankState extends State<Rank> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          color: lightwhite,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.emoji_events,
              color: Colors.yellow,
              size: 100,
            ),
            const Text("Таны одоогийн цол"),
            const Text("aaaa"),
            MainButton(
              onPressed: () {},
              color: white,
              contentColor: black,
              shadow: true,
              borderRadius: 50,
              text: "Цол хэрхэн нэмэх вэ?",
              child: const SizedBox(),
            )
          ],
        ));
  }
}
