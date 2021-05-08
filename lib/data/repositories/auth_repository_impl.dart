import 'package:petshionista/data/exceptions/custom_exceptions.dart';
import 'package:petshionista/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> authenticate() async {
    try {
      Future<void>.delayed(const Duration(microseconds: 300));
    } catch (e) {
      throw BadRequestException(message: '${e.toString()} at authenticate');
    }
  }

  @override
  Future<void> signIn() async {
    try {
      Future<void>.delayed(const Duration(microseconds: 500));
    } catch (e) {
      throw BadRequestException(message: '${e.toString()} at signIn');
    }
  }
}
