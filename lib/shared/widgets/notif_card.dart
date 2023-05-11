import 'package:app/data/data.dart';
import 'package:app/shared/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({super.key, required this.event});
  final Event event;
  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 120, bottom: 30, left: 30, right: 30),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: darkgray,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(widget.event.name ?? '', style: FontStyles.bodyMedium),
          Text(widget.event.description ?? '',
              style: Theme.of(context).textTheme.titleMedium),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  space16,
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: darkgray, width: 5),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: black,
                      size: 40,
                    )),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
