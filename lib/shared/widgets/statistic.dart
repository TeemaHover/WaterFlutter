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
          ],
        ));
  }
}

achievementStatistic(String badge, BuildContext context) {
  return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: 165,
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
            Text("Одоо байгаа цол",
                style: Theme.of(context).textTheme.labelMedium),
            Text("Цол 1", style: Theme.of(context).textTheme.titleLarge),
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
