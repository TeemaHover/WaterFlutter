import 'package:flutter/material.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/widgets/main_card.dart';
import '../../../shared/widgets/notif_card.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
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
                        text: 'Дэлхийд',
                      ),
                      Tab(
                        text: 'Монголд',
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
              'Мэдээлэл',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: gray,
                child: Column(
                  children: const [
                    NotificationCard(),
                    CardMain(title: "Байгууллагын нэр", time: "2023/05/12")
                  ],
                ),
              ),
              Container(
                color: gray,
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
