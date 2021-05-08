part of 'home_control_cubit.dart';

abstract class HomeControlState extends Equatable {
  const HomeControlState();

  @override
  List<Object> get props => <Object>[];
}

class HomeControlInitial extends HomeControlState {}

class HomeControlInProgress extends HomeControlState {}

class HomeControlFailure extends HomeControlState {}

class HomeControlChangeTabSuccess extends HomeControlState {
  const HomeControlChangeTabSuccess({
    required this.tabIndex,
  });

  final int tabIndex;
}
