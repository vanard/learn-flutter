import 'package:get/get.dart';

import '../../data/supa_manager.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SupaManager());
  }

}