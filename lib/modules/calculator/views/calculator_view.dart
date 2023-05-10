import 'package:app/modules/modules.dart';
import 'package:app/shared/index.dart';

import 'package:flutter/material.dart';

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
            const Text("data"),
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
            const Divider(
              color: blue,
            ),
            const CalculatorAddWidget(),
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
