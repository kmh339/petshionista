import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:petshionista/app/data/exceptions/custom_exceptions.dart';
import 'package:petshionista/app/domain/entities/user.dart';

class UserRepository {
  Future<Rx<User>> getUser() async {
    try {
      await Future<void>.delayed(const Duration(milliseconds: 300));
      return User(id: 1, email: 'kmh339@naver.com').obs;
    } catch (e) {
      throw BadRequestException(message: e.toString());
    }
  }
}
