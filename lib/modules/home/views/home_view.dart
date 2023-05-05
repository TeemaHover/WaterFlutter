import 'package:app/modules/modules.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/index.dart';
import '../../test/view/test.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final controller = Get.put<HomeController>(HomeController());
  @override
  Widget build(BuildContext context) {
    return const TestView();
    // return GetBuilder<HomeController>(
    //   init: HomeController(),
    //   builder: (controller) => controller.obx(
    //     onLoading: const TestView(),
    //     onError: (error) => const TestView(),
    //     (user) {
    //       return Scaffold(
    //           body:
    //               Obx(() => controller.getView(controller.currentIndex.value)),
    //           bottomNavigationBar: const MainNavigationBar());
    //     },
    //   ),
    // );
  }
}
