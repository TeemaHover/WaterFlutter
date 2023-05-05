import 'package:app/data/data.dart';
import 'package:app/providers/api_repository.dart';
import 'package:app/shared/index.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../test/view/test2.dart';

class HomeController extends GetxController
    with StateMixin<User>, WidgetsBindingObserver {
  final ApiRepository _apiRepository = Get.find();
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
        return const TestViewNext();

      case 4:
        return const SizedBox();
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
