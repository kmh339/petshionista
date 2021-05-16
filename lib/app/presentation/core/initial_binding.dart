import 'package:get/get.dart';
import 'package:petshionista/app/domain/repositories/auth_repository.dart';
import 'package:petshionista/app/domain/usecases/auth_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController(authRepository: AuthRepository()));
  }
}
