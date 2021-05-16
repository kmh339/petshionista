import 'package:get/get.dart';
import 'package:petshionista/app/domain/entities/user.dart';
import 'package:petshionista/app/domain/repositories/user_repository.dart';

class ProfileController extends GetxController {
  ProfileController({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;

  final UserRepository _userRepository;

  Rx<User>? user;

  Future<void> loadUserProfile() async {
    try {
      user = await _userRepository.getUser();
    } catch (e) {
      print(']-----] loadUserProfile [-----[ ${e.toString()}');
      Get.snackbar<void>('Hi', 'i am a modern snackbar');
    }
  }
}
