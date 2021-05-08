abstract class AuthRepository {
  Future<void> authenticate();

  Future<void> signIn();
}
