import 'package:get/get.dart';
import 'package:petshionista/app/domain/repositories/auth_repository.dart';
import 'package:petshionista/app/domain/repositories/user_repository.dart';
import 'package:petshionista/app/domain/usecases/auth_controller.dart';
import 'package:petshionista/app/presentation/pages/home/controllers/home_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRepository>(() => UserRepository());
    Get.lazyPut<AuthController>(() => AuthController(authRepository: AuthRepository()));
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
