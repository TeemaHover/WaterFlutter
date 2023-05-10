import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MontlyTile extends StatelessWidget {
  const MontlyTile(
      {super.key,
      required this.date,
      required this.month,
      required this.waterConsumption});
  final String month;
  final String date;
  final String waterConsumption;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(month),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.table_bar),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(waterConsumption),
                    Text(date),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(waterConsumption),
                      const Icon(Icons.water_drop)
                    ],
                  ),
                  Row(
                    children: [Text(waterConsumption), const Icon(Icons.money)],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
    ;
  }
}
