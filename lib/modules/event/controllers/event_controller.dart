import 'package:app/data/data.dart';
import 'package:app/modules/modules.dart';

import 'package:app/providers/api_repository.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventController extends GetxController {
  final ApiRepository _apiRepository = Get.find();
  final authController = Get.put(AuthController(apiRepository: Get.find()));

  @override
  void onInit() async {
    super.onInit();
  }
}
