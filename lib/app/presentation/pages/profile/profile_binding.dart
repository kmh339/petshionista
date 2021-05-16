import 'package:get/get.dart';
import 'package:petshionista/app/domain/repositories/user_repository.dart';

import 'controllers/profile_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRepository>(() => UserRepository());
    Get.lazyPut<ProfileController>(() => ProfileController(userRepository: Get.find<UserRepository>()));
  }
}
