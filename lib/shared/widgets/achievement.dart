import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AchievementWidget extends StatelessWidget {
  const AchievementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: bgGray,
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
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: textGray)),
              Text("Цол 1",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w700)),
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
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
}
