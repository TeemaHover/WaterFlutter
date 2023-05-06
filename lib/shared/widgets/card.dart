import 'package:flutter/material.dart';

import '../constants/colors.dart';

class WaterCard extends StatefulWidget {
  const WaterCard({super.key});

  @override
  State<WaterCard> createState() => _WaterCardState();
}

class _WaterCardState extends State<WaterCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      cardTitle("Усны хэрэглээ", white, context),
                      Row(
                        children: [
                          cardTitle("33,437", white, context),
                          cardTitle(' м.куб', white, context)
                        ],
                      ),
                      cardTitle("Өнгөрсөн сард", white, context),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: darkblue,
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.newspaper,
                      color: Colors.white,
                    ),
                  )
                ],
              ))),
    );
  }
}

cardTitle(String text, Color cl, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Text(
      text,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: cl),
    ),
  );
}
