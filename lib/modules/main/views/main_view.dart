import 'package:app/modules/main/controllers/controllers.dart';
import 'package:app/modules/modules.dart';
import 'package:app/shared/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());
    final homeController = Get.put(HomeController());
    return Scaffold(
      appBar: MainAppBar(
        title: "НҮҮР",
        color: black,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await controller.getPayment();
        },
        child: Container(
          color: bgGray,
          height: defaultHeight(context),
          child: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                space24,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Obx(() => controller.payments.isNotEmpty
                      ? WaterCard(payment: controller.payments.first)
                      : const SizedBox()),
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
                      const Text(
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
                                children: [
                                  Obx(
                                    () => GraphicWidget(
                                      payments: controller.payments,
                                      title: '1-р сар дундаж хэрэглээ',
                                      value: controller.avgQuantity.value,
                                      percent: -19.99,
                                      symbol: 'м.куб',
                                      icon: const Icon(
                                        Icons.water_drop,
                                        color: blue,
                                      ),
                                    ),
                                  ),
                                  space16,
                                  Obx(
                                    () => GraphicWidget(
                                      payments: controller.payments,
                                      title: '1-р сар дундаж хэрэглээ',
                                      value:
                                          controller.avgPrice.value.toDouble(),
                                      percent: -19.99,
                                      symbol: 'мнт',
                                      icon: const Icon(
                                        Icons.water_drop,
                                        color: Colors.yellow,
                                      ),
                                      color: Colors.yellow,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                              child: SingleChildScrollView(
                            child: Column(
                              children: [
                                AchievementWidget(
                                  user: homeController.user!,
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
