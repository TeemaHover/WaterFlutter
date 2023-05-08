import 'package:app/shared/widgets/notif_card.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/widgets/main_card.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: bgcolor,
          appBar: AppBar(
            backgroundColor: bgcolor,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    tabs: [
                      Tab(
                        text: 'Улс',
                      ),
                      Tab(
                        text: 'Байгууллага',
                      ),
                    ],
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: true,
                    labelPadding: EdgeInsets.symmetric(horizontal: 40),
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 5.0, color: Colors.white),
                        insets: EdgeInsets.symmetric(horizontal: 0.0))),
              ),
            ),
            title: const Text(
              'Хөтөлбөр',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: gray,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: const [
                    NotificationCard(),
                    CardMain(title: "Байгууллагын нэр", time: "2023/05/12")
                  ],
                ),
              ),
              Container(
                color: gray,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: const [
                    NotificationCard(),
                    CardMain(title: "Байгууллагын нэр", time: "2023/05/12")
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
