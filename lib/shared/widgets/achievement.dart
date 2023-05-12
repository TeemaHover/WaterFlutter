import 'package:app/shared/constants/index.dart';
import 'package:flutter/material.dart';

class AchievementWidget extends StatelessWidget {
  const AchievementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: bgGray,
        ),
        child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              Image.asset('assets/images/rank.png'),
              space24,
              Text("Одоо байгаа цол",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: textGray)),
              space8,
              Text("Цол 1",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w700)),
              space32,
              const Icon(Icons.arrow_downward),
              space16,
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
