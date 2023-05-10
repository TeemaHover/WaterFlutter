import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';

class CalculatorTileWidget extends StatefulWidget {
  const CalculatorTileWidget({super.key});

  @override
  State<CalculatorTileWidget> createState() => _CalculatorTileWidgetState();
}

class _CalculatorTileWidgetState extends State<CalculatorTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: darkgray,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Container(
            color: white,
            width: 50,
            height: 50,
            child: const SizedBox(),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Бусад хөтөлбөрүүд'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("data"),
                    Text("data"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
