import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_control_state.dart';

class HomeControlCubit extends Cubit<HomeControlState> {
  HomeControlCubit() : super(HomeControlInitial());

  void changeTab({required int tabIndex}) {
    emit(HomeControlInProgress());
    emit(HomeControlChangeTabSuccess(tabIndex: tabIndex));
  }
}
