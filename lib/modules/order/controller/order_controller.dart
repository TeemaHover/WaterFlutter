import 'package:app/data/data.dart';
import 'package:app/modules/home/controllers/controllers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../providers/providers.dart';

class OrderController extends GetxController {
  final apiRepository = Get.find<ApiRepository>();
  final homeController = Get.put(HomeController());
  final loading = false.obs;
  final products = <Product>[].obs;
  @override
  void onInit() async {
    await getProducts();
    super.onInit();
  }

  getProducts() async {
    try {
      loading.value = true;
      final List<Product> res;
      if (homeController.user?.type == 'business') {
        res = await apiRepository.getProduct('/product/business');
      } else {
        if (homeController.user?.type == 'shop' ||
            homeController.user?.type == 'user') {
          res = await apiRepository.getProduct('/product');
        } else {
          res = [];
        }
      }
      print(res);
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
