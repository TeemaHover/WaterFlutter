import 'package:app/data/data.dart';
import 'package:app/providers/api_repository.dart';
import 'package:dio/dio.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../shared/index.dart';
import '../../splash/splash.dart' show SplashController;

class RegisterController extends GetxController {
  final prefs = Get.find<SharedPreferences>();
  final loading = false.obs;
  final isVisible = true.obs;
  get isLoading => loading.value;
  set isLoading(value) => loading.value = value;
  final phoneFocus = FocusNode();

  final currentIndex = 0.obs;

  final apiRepository = Get.find<ApiRepository>();
  final passwordFocus = FocusNode();
  final passwordRepeatFocus = FocusNode();
  final passwordController = TextEditingController();
  final passwordRepeatController = TextEditingController();
  final user = Rxn<User>(User());
  final pageController = PageController();
  final currentPage = 0.obs;
  showPassword() async {
    isVisible.value = !isVisible.value;
    await Future.delayed(const Duration(milliseconds: 500));
    isVisible.value = !isVisible.value;
  }

  register(BuildContext context) async {
    AppFocus.unfocus(context);

    try {
      isLoading = true;
      if (user.value?.type == 'business' || user.value?.type == 'carrier') {
        user.value?.status = 'pending';
      } else {
        user.value?.status = 'active';
      }
      final res = await apiRepository.register(
          passwordController.text, user.value as User);
      _saveTokens(res);
      isLoading = false;
    } on DioError catch (e) {
      print(e);
      // print(e.response?.data['message'].toString());
      Get.snackbar(
        e.response?.statusMessage ?? 'Login Failed',
        e.response?.data['message'] ?? 'Something went wrong',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      passwordController.clear();
      passwordRepeatController.clear();
      user.value = User();
      isLoading = false;
    }
  }

  // forgetPassword(BuildContext context) async {
  //   AppFocus.unfocus(context);
  // }

  Future<void> logout() async {
    final prefs = Get.find<SharedPreferences>();
    await prefs.remove(StorageKeys.token.name);
    Get.find<SplashController>().token.value = null;
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  _saveTokens(LoginResponse res) async {
    final prefs = Get.find<SharedPreferences>();
    await prefs.setString(StorageKeys.token.name, res.accessToken);
    Get.find<SplashController>().token.value = res.accessToken;
  }
}
