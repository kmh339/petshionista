import 'package:get/get.dart';
import 'package:petshionista/app/domain/repositories/auth_repository.dart';

class AuthController extends GetxController {
  AuthController({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  bool isLoggedIn = false;

  Future<void> signIn() async {
    try {
      await _authRepository.authenticate();
      isLoggedIn = true;
      update();
    } catch (e) {
      print(']-----] appStart [-----[ ${e.toString()}');
      Get.snackbar<void>(
        '로그인',
        '실패',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future<void> signOut() async {
    try {
      isLoggedIn = false;
      update();
    } catch (e) {
      print(']-----] appStart [-----[ ${e.toString()}');
      Get.snackbar<void>(
        '로그아웃',
        '실패',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
