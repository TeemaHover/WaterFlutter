import 'package:flutter/material.dart';

import '../../constants/colors.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: blue,
              ),
              width: 300,
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      cardTitle("Усны хэрэглээ", white),
                      Row(
                        children: [
                          cardTitle("33,437", white),
                          cardTitle(' м.куб', white)
                        ],
                      ),
                      cardTitle("Өнгөрсөн сард", white),
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

cardTitle(String text, Color cl) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Text(
      text,
      style: TextStyle(color: cl),
    ),
  );
}
