import 'package:app/data/data.dart';
import 'package:app/modules/modules.dart';

import 'package:app/providers/api_repository.dart';
import 'package:app/shared/index.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController
    with StateMixin<User>, WidgetsBindingObserver {
  final ApiRepository _apiRepository = Get.find();
  final authController = Get.put(AuthController(apiRepository: Get.find()));

  final showPerformanceOverlay = false.obs;
  final currentIndex = 0.obs;
  final isLoading = false.obs;
  final rxUser = Rxn<User?>();
  final apiRepository = Get.find<ApiRepository>();

  User? get user => rxUser.value;
  set user(value) => rxUser.value = value;

  Widget getView(int index) {
    switch (index) {
      case 0:
        return const MainView();
      case 2:
        return const CalculatorView();
      case 3:
        return const EventView();
      case 4:
        return Center(
          child: TextButton(
            onPressed: () => authController.logout(),
            child: const Text('Logout'),
          ),
        );
      default:
        return const Center(child: Text('Something went wrong'));
    }
  }

  changeNavIndex(int index) {
    currentIndex.value = index;
    update();
  }

  Future<void> setupApp() async {
    isLoading.value = true;
    try {
      user = await _apiRepository.getUser();

      change(user, status: RxStatus.success());

      isLoading.value = false;
    } on DioError {
      isLoading.value = false;
      Get.find<SharedPreferences>().remove(StorageKeys.token.name);
      update();
    }
  }

  @override
  void onInit() async {
    await setupApp();
    super.onInit();
  }
}
