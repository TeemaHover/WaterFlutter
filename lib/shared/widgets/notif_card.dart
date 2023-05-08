import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/widgets/card.dart';
import 'package:app/shared/widgets/main_card.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({super.key});

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
          cardTitle('Хөтөлбөрийн нэр', black, context),
          cardTitle(
              'Тухайн хөтөлбөрийн товч танилцуулга 15-20 үгэнд багтах ёстой.',
              black,
              context),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
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
          CardMain(title: "Байгууллагын нэр", time: "2023/05/12")
        ]),
      ),
    );
  }
}
