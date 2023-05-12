import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

import '../../../theme/text_theme.dart';

class MontlyWaterCalculator extends StatelessWidget {
  const MontlyWaterCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: medium, vertical: 12),
        decoration: const BoxDecoration(
          color: lightblue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Хувийн мэдээлэл",
                        style: FontStyles.titleMedium
                            .copyWith(fontWeight: FontWeight.normal)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("33,437", style: FontStyles.bodyLarge),
                        Text(" мкв", style: FontStyles.bodyMedium),
                        Text(" = ", style: FontStyles.bodyMedium),
                        Text("33,437 ₮", style: FontStyles.bodyLarge),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Өөрчлөлт:",
                            style: FontStyles.titleMedium
                                .copyWith(fontWeight: FontWeight.normal)),
                        space8,
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: blue,
                          ),
                          child: const Text(
                            "x1",
                            style: TextStyle(color: white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            space16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext builder) {
                            return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.75,
                                margin: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 15,
                                    vertical: 20),
                                color: Colors.transparent,
                                child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                      ),
                                    ),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("asd"),
                                          Text("asdasdasd"),
                                        ])));
                          });
                    },
                    borderRadius: 25,
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 49,
                    color: blue,
                    child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: white,
                        ),
                        child: const Icon(
                          Icons.question_mark,
                          color: blue,
                        ))),
                Image.asset('assets/images/water_drop.png'),
                space16,
              ],
            ),
            space16,
          ],
        ));
  }
}
