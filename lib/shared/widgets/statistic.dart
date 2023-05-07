import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class Statistic extends StatefulWidget {
  const Statistic({super.key});

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Статистик'),
            Row(
              children: [
                Column(
                  children: [
                    waterStatistic('1-р сар дундаж хэрэглээ', '35.5', '-19,99',
                        Icons.water_drop, blue, context),
                    waterStatistic('1-р сар дундаж хэрэглээ', '35.5', '-19,99',
                        Icons.money, Colors.yellow, context),
                  ],
                ),
                achievmentStatistic('Цол 1', context)
              ],
            ),
          ],
        ));
  }
}

achievmentStatistic(String badge, BuildContext context) {
  return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: 165,
      height: 460,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: gray,
      ),
      child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            const Icon(
              Icons.emoji_events,
              color: Colors.yellow,
              size: 100,
            ),
            cardTitle('Одоо байгаа цол', black, context),
            cardTitle('Цол 1', black, context),
            const Icon(Icons.arrow_downward),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              width: 50,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.assignment_outlined,
                    color: Colors.black,
                    size: 15,
                  ),
                ],
              ),
            ),
          ])));
}

waterStatistic(String title, String value, String percent, IconData icon,
    Color cl, BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    width: 165,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: gray,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cardTitle(title, black, context),
        Row(
          children: [
            cardTitle(value, black, context),
            cardTitle(icon == Icons.money ? ' мнт' : ' м.куб', black, context),
            Icon(
              icon,
              color: cl,
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green,
          ),
          width: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 15,
              ),
              cardTitle(percent, white, context)
            ],
          ),
        ),
        BarChartSample3(
          cl: cl,
        ),
      ],
    ),
  );
}
