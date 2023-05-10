import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGray,
      appBar: MainAppBar(title: "Нүүр"),
      body: SizedBox(
        height: defaultHeight(context),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
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
        ),
      ),
    );
  }
}
