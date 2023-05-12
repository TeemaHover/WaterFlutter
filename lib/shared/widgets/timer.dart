import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Timer extends StatelessWidget {
  const Timer({super.key, required this.time});
  final int time;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        padding: const EdgeInsets.symmetric(vertical: 20),
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
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                "Цэвэр усны нөөц дуусах өдөр",
                style: TextStyle(fontSize: 20, color: white),
              ),
            ),
            TweenAnimationBuilder<Duration>(
                duration: Duration(milliseconds: time),
                tween: Tween(
                    begin: Duration(milliseconds: time), end: Duration.zero),
                onEnd: () {
                  print('Timer ended');
                },
                builder: (BuildContext context, Duration value, Widget? child) {
                  final years = value.inDays ~/ 365;
                  final months = (value.inDays - years * 365) ~/ 30;
                  final days = value.inDays - years * 365 - months * 30;
                  final hours = value.inHours % 24;
                  final minutes = value.inMinutes % 60;
                  final seconds = value.inSeconds % 60;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: white,
                            ),
                            child: Text(
                              "$years",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          const Text(
                            "Жил",
                            style: TextStyle(fontSize: 14, color: white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: white,
                            ),
                            child: Text(
                              "$months",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          const Text(
                            "Сар",
                            style: TextStyle(fontSize: 14, color: white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: white,
                            ),
                            child: Text(
                              "$days",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          const Text(
                            "Өдөр",
                            style: TextStyle(fontSize: 14, color: white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: white,
                            ),
                            child: Text(
                              "$hours",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          const Text(
                            "Цаг",
                            style: TextStyle(fontSize: 14, color: white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: white,
                            ),
                            child: Text(
                              "$minutes",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          const Text(
                            "Минут",
                            style: TextStyle(fontSize: 14, color: white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: white,
                            ),
                            child: Text(
                              "$seconds",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          const Text(
                            "Секунд",
                            style: TextStyle(fontSize: 14, color: white),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
          ],
        ));
  }
}
