import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MontlyWaterCalculator extends StatelessWidget {
  const MontlyWaterCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3,
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 15,
            right: MediaQuery.of(context).size.width / 15,
            top: MediaQuery.of(context).size.height / 10,
            bottom: MediaQuery.of(context).size.width / 20),
        decoration: const BoxDecoration(
          color: lightblue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("data"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("data мкв"),
                        Text("="),
                        Text("data мкв"),
                      ],
                    ),
                    Row(
                      children: const [
                        Text("data"),
                        Icon(Icons.add),
                      ],
                    )
                  ],
                ),
              ],
            ),
            MainButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext builder) {
                        return Container(
                            height: MediaQuery.of(context).size.height * 0.75,
                            margin: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 15,
                                vertical: 20),
                            color: Colors.transparent,
                            child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                  ),
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("asd"),
                                      Text("asdasdasd"),
                                    ])));
                      });
                },
                text: "+",
                width: MediaQuery.of(context).size.width / 2.5,
                height: 49,
                color: blue,
                child: const SizedBox())
          ],
        ));
  }
}