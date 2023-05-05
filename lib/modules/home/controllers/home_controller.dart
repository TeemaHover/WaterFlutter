import 'package:app/data/data.dart';
import 'package:app/modules/test/view/test.dart';
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

  User? get user => rxUser.value;
  set user(value) => rxUser.value = value;

  Widget getView(int index) {
    switch (index) {
      case 0:
        return const TestView();

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
    } on DioError {
      isLoading.value = false;
      Get.find<SharedPreferences>().remove(StorageKeys.token.name);
      update();
    }
  }

  @override
  void onInit() async {
    //await setupApp();
    super.onInit();
  }
}
