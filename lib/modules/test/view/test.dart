import 'package:app/shared/widgets/new/app_bar.dart';
import 'package:app/shared/widgets/new/card.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/widgets/new/statistic.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: deq(title: "Нүүр"),
      body: Column(
        children: [
          const WaterCard(),
          Container(
            color: white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Statistic()],
            ),
          ),
        ],
      ),
    );
  }
}
