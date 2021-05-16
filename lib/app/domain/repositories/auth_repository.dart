import 'package:petshionista/app/data/exceptions/custom_exceptions.dart';

class AuthRepository {
  Future<void> authenticate() async {
    try {
      Future<void>.delayed(const Duration(microseconds: 400));
    } catch (e) {
      throw BadRequestException(message: '${e.toString()} at authenticate');
    }
  }

  Future<void> signIn() async {
    try {
      Future<void>.delayed(const Duration(microseconds: 500));
    } catch (e) {
      throw BadRequestException(message: '${e.toString()} at signIn');
    }
  }
}
