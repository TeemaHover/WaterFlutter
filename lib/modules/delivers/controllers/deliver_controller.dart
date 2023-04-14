import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../providers/providers.dart';

class DeliverController extends GetxController {
  final apiRepository = Get.find<ApiRepository>();

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  onClose() {
    super.onClose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }
}
