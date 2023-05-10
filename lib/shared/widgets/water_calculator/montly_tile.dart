import 'package:flutter/material.dart';

class MontlyTile extends StatefulWidget {
  final String month;
  final String waterConsumption;
  final String date;
  const MontlyTile(
      {super.key,
      required this.month,
      required this.waterConsumption,
      required this.date});

  @override
  State<MontlyTile> createState() => _MontlyTileState();
}

class _MontlyTileState extends State<MontlyTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.month),
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
                    Text(widget.waterConsumption),
                    Text(widget.date),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(widget.waterConsumption),
                  const Icon(Icons.water_drop)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
