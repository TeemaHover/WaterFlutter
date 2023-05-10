import 'package:app/shared/constants/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WaterCard extends StatelessWidget {
  const WaterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(medium),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff39BCFE),
                Color(0xff3899F2),
              ],
              tileMode: TileMode.mirror),
          color: blue,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Усны хэрэглээ",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: white,
                  ),
            ),
            space4,
            RichText(
                text: TextSpan(
                    text: "33,123 ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: white),
                    children: [
                  TextSpan(
                      text: "м.куб",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: white)),
                ])),
            space4,
            Text(
              "Өнгөрсөн сард",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: white,
                  ),
            ),
            space24,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(origin),
                color: blue,
              ),
              padding: const EdgeInsets.all(10),
              child: const Icon(
                Icons.newspaper,
                color: Colors.white,
              ),
            )
          ],
        ));
    ;
  }
}
