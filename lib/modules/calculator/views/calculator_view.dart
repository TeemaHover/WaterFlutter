import 'package:app/modules/calculator/calculator.dart';
import 'package:app/shared/index.dart';

import 'package:flutter/material.dart';

import '../../../theme/text_theme.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Тооцоолуур"),
      ),
      body: Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
        height: defaultHeight(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: darkgray,
              ),
              child: const SizedBox(),
            ),
            space16,
            Text(
              "Усны заалт оруулах",
              style: FontStyles.bodyMedium,
            ),
            space16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: darkgray,
                  ),
                  child: const Center(
                    child: Text("Халуун ус"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: darkgray,
                  ),
                  child: const Center(
                    child: Text("Хүйтэн ус"),
                  ),
                ),
              ],
            ),
            space16,
            const Divider(
              color: blue,
            ),
            space16,
            const CalculatorTileWidget(),
            space16,
            const CalculatorTileWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            MainButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("Төлбөр төлөх"),
                    Text("Нийт : 200,000₮"),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
