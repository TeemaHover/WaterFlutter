import 'package:app/modules/calculator/calculator.dart';
import 'package:app/modules/main/controllers/controllers.dart';
import 'package:app/shared/index.dart';
import 'package:app/shared/widgets/second_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class WaterCalculatorWidget extends StatelessWidget {
  const WaterCalculatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());
    return Scaffold(
        appBar: SecondAppBar(
          title: "",
          bg: lightblue,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.bottom -
              MediaQuery.of(context).padding.top -
              50,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MontlyWaterCalculator(),
                Column(
                  children: controller.payments.map((element) {
                    return MontlyTile(
                      payment: element,
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ));
  }
}
