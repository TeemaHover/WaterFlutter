import 'package:app/data/data.dart';
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
          image: DecorationImage(
              image: AssetImage(imageMask), alignment: Alignment.bottomRight),
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
              color: skyBlue.withOpacity(0.5),
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
              style: FontStyles.titleMedium
                  .copyWith(color: white, fontWeight: FontWeight.normal),
            ),
            space4,
            RichText(
                text: TextSpan(
                    text: "$quantity ",
                    style: FontStyles.bodyLarge,
                    children: [
                  TextSpan(
                      text: "${payment.items?.first.symbol}",
                      style: FontStyles.titleMedium),
                ])),
            space4,
            Text(
              "Хамгийн сүүлд илгээсэн",
              style: FontStyles.titleMedium
                  .copyWith(color: white, fontWeight: FontWeight.normal),
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
