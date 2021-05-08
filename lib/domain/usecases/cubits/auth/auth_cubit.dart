import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:petshionista/domain/repositories/auth_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required this.authRepository,
  }) : super(AuthInitial());

  final AuthRepository authRepository;

  Future<void> startApplication() async {
    emit(AuthInProgress());
    try {
      await authRepository.authenticate();
      emit(AuthSuccess());
    } catch (e) {
      print(']-----] appInit [-----[ ${e.toString()}');
      emit(AuthFailure());
    }
  }

  Future<void> login() async {
    emit(AuthInProgress());
    try {
      await authRepository.signIn();
      emit(AuthSuccess());
    } catch (e) {
      print(']-----] login [-----[ ${e.toString()}');
      emit(AuthFailure());
    }
  }
}
