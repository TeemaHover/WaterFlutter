import 'package:flutter/material.dart';

import '../../../shared/constants/colors.dart';

class TestViewNext extends StatefulWidget {
  const TestViewNext({super.key});

  @override
  State<TestViewNext> createState() => _TestViewNextState();
}

class _TestViewNextState extends State<TestViewNext> {
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
                color: Colors.yellow,
              ),
              Container(
                color: Colors.orange,
              ),
            ],
          )),
    );
  }
}
