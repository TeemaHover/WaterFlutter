import 'package:app/data/data.dart';
import 'package:app/modules/calculator/calculator.dart';
import 'package:app/shared/constants/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';

import '../../modules/main/views/water_calculator_widget.dart';

class WaterCard extends StatelessWidget {
  const WaterCard({super.key, required this.payment});
  final Payment payment;
  @override
  Widget build(BuildContext context) {
    double quantity = 0.0;
    payment.items?.forEach(
      (element) {
        quantity += element.quantity!;
      },
    );
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
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: blue,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Усны хэрэглээ",
              style: FontStyles.titleMedium.copyWith(
                color: white,
              ),
            ),
            space4,
            RichText(
                text: TextSpan(
                    text: "$quantity ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: white),
                    children: [
                  TextSpan(
                      text: "${payment.items?.first.symbol}",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: white)),
                ])),
            space4,
            Text(
              "Хамгийн сүүлд илгээсэн",
              style: FontStyles.titleMedium.copyWith(
                color: white,
              ),
            ),
            space24,
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WaterCalculatorWidget(),
                  )),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(origin),
                  color: blue,
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.newspaper,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ));
  }
}
