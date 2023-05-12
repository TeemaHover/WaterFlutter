import 'package:app/data/models/info.dart';
import 'package:app/shared/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({super.key, required this.info});
  final List<Info> info;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
            'Бусад хөтөлбөрүүд',
          ),
        ),
        Column(
            children: info
                .map(
                  (e) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: darkgray,
                            ),
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.name ?? '',
                                style: FontStyles.titleSmall,
                              ),
                              Row(
                                children: [
                                  Text("Асуудлын зэрэг: "),
                                  Icon(Icons.star),
                                ],
                              ),
                              Text(
                                'Нийтлэгдсэн огноо: ${DateFormat('yyyy/MM/dd').format(DateTime.fromMillisecondsSinceEpoch(e.date!))}',
                                style: FontStyles.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList())
      ],
    );
  }
}
