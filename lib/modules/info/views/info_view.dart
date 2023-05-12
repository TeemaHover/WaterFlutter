import 'package:app/shared/constants/index.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/information_card.dart';
import '../../../shared/widgets/timer.dart';

class InfoView extends StatefulWidget {
  const InfoView({super.key});

  @override
  State<InfoView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: bgLightBlue,
          appBar: AppBar(
            backgroundColor: bgGray,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Align(
                alignment: Alignment.center,
                child: TabBar(
                  labelColor: darkBlue,
                  unselectedLabelColor: gray,
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
                    borderSide: BorderSide(
                      width: 3.0,
                      color: blue,
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 20.0),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            title: const Text('Мэдээлэл',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                )
                // style: FontStyles.asd,
                ),
            elevation: 1,
            shadowColor: gray,
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                color: bgLightBlue,
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
                color: bgGray,
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
