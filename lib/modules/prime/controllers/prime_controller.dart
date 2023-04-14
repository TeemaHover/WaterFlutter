import 'package:app/data/data.dart';
import 'package:app/modules/home/controllers/controllers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../providers/providers.dart';

class PrimeController extends GetxController {
  final _apiRepository = Get.find<ApiRepository>();
  final homeController = Get.put(HomeController());
  final products = <Product>[].obs;
  final loading = false.obs;

  @override
  void onInit() async {
    getProducts();
    super.onInit();
  }

  getProducts() async {
    try {
      loading.value = true;
      final List<Product> res;
      if (homeController.user?.type == 'business') {
        res = await _apiRepository.getProduct('/product/business');
      } else {
        if (homeController.user?.type == 'shop' ||
            homeController.user?.type == 'user') {
          res = await _apiRepository.getProduct('/product');
        } else {
          res = [];
        }
      }
      products.value = res;
      loading.value = false;
    } on DioError catch (e) {
      loading.value = false;
      print(e);
    }
  }

  @override
  onClose() {
    super.onClose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }
}
