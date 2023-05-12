import 'package:app/data/data.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MontlyTile extends StatelessWidget {
  const MontlyTile({super.key, required this.payment});
  final Payment payment;
  @override
  Widget build(BuildContext context) {
    double quantity = 0.0;
    DateTime date = DateTime.fromMillisecondsSinceEpoch(payment.date!);
    payment.items?.forEach(
      (element) {
        quantity += element.quantity!;
      },
    );
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${date.month} сар',
            style: FontStyles.bodyMedium,
          ),
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
                    Text(
                      '$quantity ${payment.items?.first.symbol}',
                      style: FontStyles.titleMedium,
                    ),
                    Text('${date.year} он ${date.month} сар '),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '$quantity',
                        style: FontStyles.titleMedium,
                      ),
                      const Icon(Icons.water_drop)
                    ],
                  ),
                  Row(
                    children: [
                      Text('${payment.price}'),
                      const Icon(Icons.money)
                    ],
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
