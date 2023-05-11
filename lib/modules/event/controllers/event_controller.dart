import 'package:app/data/data.dart';
import 'package:app/modules/modules.dart';
import 'package:app/providers/api_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class EventController extends GetxController {
  final ApiRepository _apiRepository = Get.find();
  final events = <Event>[].obs;
  final authController = Get.put(AuthController(apiRepository: Get.find()));
  final loading = false.obs;
  getEvents() async {
    try {
      loading.value = true;
      final res = await _apiRepository.getEvent();
      events.value = res;
      print(res);
      loading.value = false;
    } catch (e) {
      print(e);
      loading.value = false;
    }
  }

  registerEvent(String id) async {
    try {
      loading.value = true;
      final res = await _apiRepository.registerEvent(id);
      if (res) {
        Get.snackbar('Success', "success");
      } else {
        Get.snackbar('Failed', "sucess");
      }

      loading.value = false;
    } on DioError catch (e) {
      Get.snackbar(
        'Error',
        e.response?.data ?? 'Something went wrong',
      );
      loading.value = false;
    }
  }

  createEvent(Event event) async {
    try {
      loading.value = true;
      final res = await _apiRepository.createEvent(event);
      if (res) {
        Get.snackbar('Success', "success");
      } else {
        Get.snackbar('Failed', "sucess");
      }

      loading.value = false;
    } catch (e) {
      print(e);
      loading.value = false;
    }
  }

  @override
  void onInit() async {
    await getEvents();
    super.onInit();
  }
}
