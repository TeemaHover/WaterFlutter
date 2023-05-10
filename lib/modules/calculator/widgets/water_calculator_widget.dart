import 'package:app/modules/modules.dart';
import 'package:flutter/material.dart';

class WaterCalculatorWidget extends StatefulWidget {
  const WaterCalculatorWidget({super.key});

  @override
  State<WaterCalculatorWidget> createState() => _WaterCalculatorWidgetState();
}

class _WaterCalculatorWidgetState extends State<WaterCalculatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: const [
          MontlyWaterCalculator(),
          MontlyTile(
            month: "Энэ сар",
            waterConsumption: "0.0",
            date: "2021-09-01",
          ),
        ],
      ),
    ));
  }
}
