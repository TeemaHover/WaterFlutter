import 'package:app/shared/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Нүүр",
          style: FontStyles.bodyLarge.copyWith(
            color: Colors.black,
          ),
        ),
        elevation: 2,
        backgroundColor: white,
      ),
      body: Container(
        color: bg,
        height: defaultHeight(context),
        child: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: WaterCard(),
              ),
              space24,
              Container(
                decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: origin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Статистик',
                      style: FontStyles.bodyMedium,
                    ),
                    space16,
                    Row(
                      children: [
                        Flexible(
                          child: SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: Column(
                              children: const [
                                GraphicWidget(
                                  title: '1-р сар дундаж хэрэглээ',
                                  value: 35.5,
                                  percent: -19.99,
                                  symbol: 'м.куб',
                                  icon: Icon(
                                    Icons.water_drop,
                                    color: blue,
                                  ),
                                ),
                                space16,
                                GraphicWidget(
                                  title: '1-р сар дундаж хэрэглээ',
                                  value: 35.5,
                                  percent: -19.99,
                                  symbol: 'мнт',
                                  icon: Icon(
                                    Icons.water_drop,
                                    color: Colors.yellow,
                                  ),
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(child: AchievementWidget()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
