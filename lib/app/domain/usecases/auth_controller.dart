import 'package:get/get.dart';
import 'package:petshionista/app/domain/repositories/auth_repository.dart';

enum AuthStatus {
  idle,
  authenticated,
  unauthenticated,
}

class AuthController extends GetxController {
  AuthController({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  late AuthStatus authStatus;

  @override
  void onInit() {
    super.onInit();

    authStatus = AuthStatus.idle;

    _appStart();
  }

  Future<void> _appStart() async {
    try {
      await Future<void>.delayed(const Duration(milliseconds: 2000));
      await _authRepository.authenticate();
      authStatus = AuthStatus.authenticated;
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

  Future<void> signIn() async {
    try {
      await _authRepository.authenticate();
      authStatus = AuthStatus.authenticated;
      update();
    } catch (e) {
      print(']-----] signIn [-----[ ${e.toString()}');
      Get.snackbar<void>(
        '로그인',
        '실패',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future<void> signOut() async {
    try {
      authStatus = AuthStatus.unauthenticated;
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
