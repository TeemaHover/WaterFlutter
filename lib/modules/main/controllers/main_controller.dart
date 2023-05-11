import 'package:app/data/data.dart';
import 'package:app/modules/modules.dart';

import 'package:app/providers/api_repository.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final ApiRepository _apiRepository = Get.find();
  final authController = Get.put(AuthController(apiRepository: Get.find()));
  final payments = <Payment>[].obs;
  final loading = false.obs;
  final avgQuantity = 0.0.obs;
  final avgPrice = 0.obs;

  getPayment() async {
    try {
      loading.value = true;
      final res = await _apiRepository.getPayments();
      payments.value = res;
      double q = 0.0;
      int price = 0;
      res.forEach((element) {
        element.items?.forEach((e) {
          q += e.quantity!;
        });
        price += element.price!;
      });
      avgPrice.value = (price / res.length).round();
      avgQuantity.value = double.parse((q / res.length).toStringAsFixed(2));
      loading.value = false;
    } catch (e) {
      print(e);
      loading.value = false;
    }
  }

  @override
  void onInit() async {
    getPayment();
    super.onInit();
  }
}
