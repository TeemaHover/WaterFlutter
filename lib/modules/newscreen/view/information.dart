import 'package:app/shared/constants/index.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/information_card.dart';
import '../../../shared/widgets/timer.dart';

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
          backgroundColor: bgGray,
          appBar: AppBar(
            backgroundColor: bgGray,
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
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                color: gray,
                child: Column(
                  children: const [
                    Timer(),
                    Expanded(
                      child: InformationCard(
                          title: "Байгууллагын нэр", time: "2023/05/12"),
                    )
                  ],
                ),
              ),
              Container(
                color: gray,
                child: Column(
                  children: const [
                    Timer(),
                    Expanded(
                      child: InformationCard(
                          title: "Байгууллагын нэр", time: "2023/05/12"),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
