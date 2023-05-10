import 'package:app/shared/constants/index.dart';
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
          appBar: AppBar(
            backgroundColor: bgGray,
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
                color: bgGray,
                height: defaultHeight(context),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const NotificationCard(),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: const Text(
                          'Бусад хөтөлбөрүүд',
                        ),
                      ),
                      const CardMain(
                          title: "Байгууллагын нэр", time: "2023/05/12")
                    ],
                  ),
                ),
              ),
              Container(
                color: bgGray,
                height: defaultHeight(context),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      NotificationCard(),
                      Text(
                        'Бусад хөтөлбөрүүд',
                      ),
                      CardMain(title: "Байгууллагын нэр", time: "2023/05/12")
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
