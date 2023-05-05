import 'package:app/modules/modules.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../test/view/test.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final controller = Get.put<HomeController>(HomeController());
  @override
  Widget build(BuildContext context) {
    return TestView();
  }
}
