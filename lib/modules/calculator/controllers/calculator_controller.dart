import 'package:app/data/data.dart';
import 'package:app/modules/modules.dart';

import 'package:app/providers/api_repository.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final ApiRepository _apiRepository = Get.find();
  final authController = Get.put(AuthController(apiRepository: Get.find()));
  final voluntary = Rxn(Voluntary());
  final paymentItem = <Items>[].obs;
  final payments = <Payment>[].obs;
  final loading = false.obs;
  getEvents() async {
    try {
      loading.value = true;
      final res = await _apiRepository.getPayments();
      payments.value = res;
      loading.value = false;
    } catch (e) {
      print(e);
      loading.value = false;
    }
  }

  getVoluntary() async {
    try {
      loading.value = true;
      final res = await _apiRepository.getVoluntary();
      voluntary.value = res.first;

      loading.value = false;
    } catch (e) {
      print(e);
      loading.value = false;
    }
  }

  @override
  void onInit() async {
    getEvents();
    getVoluntary();
    super.onInit();
  }
}
