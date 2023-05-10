import 'package:app/shared/widgets/water_calculator/montly_tile.dart';
import 'package:app/shared/widgets/water_calculator/montly_water_calculator.dart';
import 'package:flutter/material.dart';

class WaterCalculator extends StatefulWidget {
  const WaterCalculator({super.key});

  @override
  State<WaterCalculator> createState() => _WaterCalculatorState();
}

class _WaterCalculatorState extends State<WaterCalculator> {
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
