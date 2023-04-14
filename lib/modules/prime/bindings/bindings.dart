import 'package:app/modules/modules.dart';
import 'package:get/get.dart';

class PrimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrimeController>(() => PrimeController(), fenix: true);
  }
}
