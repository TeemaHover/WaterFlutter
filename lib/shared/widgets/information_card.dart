import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';

class InformationCard extends StatefulWidget {
  final String title;
  final String time;

  const InformationCard({super.key, required this.title, required this.time});

  @override
  State<InformationCard> createState() => _InformationCardState();
}

class _InformationCardState extends State<InformationCard> {
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
        Container(
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
                      widget.title,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const Icon(Icons.star),
                    Text(
                      'Нийтлэгдсэн огноо: ${widget.time}',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
