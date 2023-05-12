import 'package:app/data/data.dart';
import 'package:app/data/models/info.dart';
import 'package:app/modules/modules.dart';
import 'package:app/providers/api_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class InfoController extends GetxController {
  final ApiRepository _apiRepository = Get.find();
  final events = <Event>[].obs;
  final authController = Get.put(AuthController(apiRepository: Get.find()));
  final loading = false.obs;
  final mongolInfo = <Info>[].obs;
  final worldInfo = <Info>[].obs;
  getInfo() async {
    try {
      loading.value = true;
      final res = await _apiRepository.getInfo('mongol');
      mongolInfo.value = res;
      final res1 = await _apiRepository.getInfo('world');
      worldInfo.value = res1;
      loading.value = false;
    } catch (e) {
      print(e);
      loading.value = false;
    }
  }

  @override
  void onInit() async {
    await getInfo();
    super.onInit();
  }
}
