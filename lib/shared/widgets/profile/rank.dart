import 'package:app/modules/modules.dart';
import 'package:app/shared/index.dart';
import 'package:app/shared/widgets/main_button.dart';
import 'package:app/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

class Rank extends StatefulWidget {
  const Rank({super.key});

  @override
  State<Rank> createState() => _RankState();
}

class _RankState extends State<Rank> {
  @override
  Widget build(BuildContext context) {
    final auth = Get.put(AuthController(apiRepository: Get.find()));
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          color: bgGray,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/rank.png'),
            const Text(
              "Таны одоогийн цол",
              style: FontStyles.bodyMedium,
            ),
            space8,
            Text(
              "Та цолоо нэмснээр шагнал урамшуулал цаашлаад хариуцлагатай иргэний шагнал авах боломжтой.",
              textAlign: TextAlign.center,
            ),
            space24,
            MainButton(
              onPressed: () {
                auth.logout();
              },
              padding: EdgeInsets.symmetric(horizontal: 40),
              color: white,
              contentColor: black,
              shadow: true,
              borderRadius: 50,
              child: Text(
                'Гарах',
                // 'Цол хэрхэн нэмэх вэ?',
                style:
                    FontStyles.labelMedium.copyWith(color: Color(0xff353A48)),
              ),
            )
          ],
        ));
  }
}
