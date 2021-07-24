import 'package:flutter_learn_getx/data/supa_manager.dart';
import 'package:flutter_learn_getx/pages/home/home_controller.dart';
import 'package:flutter_learn_getx/service/dummy_service.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ApiService());
    Get.lazyPut(() => SupaManager());
  }

}