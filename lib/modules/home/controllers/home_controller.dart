import 'package:app/data/data.dart';
import 'package:app/providers/api_repository.dart';
import 'package:app/shared/index.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../modules.dart';

class HomeController extends GetxController
    with StateMixin<User>, WidgetsBindingObserver {
  final ApiRepository _apiRepository = Get.find();
  final showPerformanceOverlay = false.obs;
  final currentIndex = 0.obs;
  final isLoading = false.obs;
  final searchTextController = TextEditingController();
  final rxUser = Rxn<User?>();
  final scannedBarcode = ''.obs;
  final apiRepository = Get.find<ApiRepository>();
  final authController = Get.put(AuthController(apiRepository: Get.find()));
  User? get user => rxUser.value;
  set user(value) => rxUser.value = value;

  Future<Widget> getView(int index) async {
    switch (index) {
      case 0:
        return const PrimeView();
      case 1:
        if (user?.type == 'carrier') {
          return const TrackedMapWidget();
        } else {
          return const DeliverView();
        }
      case 2:
        final Product product = await scanBarcodeNormal();

        return ProductDetailView(
          product: product,
        );
      case 3:
        return const BookmarkView();
      case 4:
        authController.logout();
        return const SizedBox();
      default:
        return const Center(child: Text('Something went wrong'));
    }
  }

  changeNavIndex(int index) {
    currentIndex.value = index;
    update();
  }

  Future<Product> scanBarcodeNormal() async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      await Permission.camera.request();
    }

    try {
      final barcode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);

      scannedBarcode.value = barcode;
      final Product product =
          await apiRepository.getProductByBarcode(int.parse(barcode));

      return product;
    } on PlatformException {
      print('failed');
      return Product();
    }
  }

  Future<void> setupApp() async {
    isLoading.value = true;
    try {
      user = await _apiRepository.getUser();

      change(user, status: RxStatus.success());

      isLoading.value = false;
    } on DioError catch (e) {
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

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  onReady() {
    super.onReady();
  }
}
