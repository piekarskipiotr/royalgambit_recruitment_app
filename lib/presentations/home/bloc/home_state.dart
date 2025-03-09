part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.stateStatus = StateStatus.initial,
    this.error,
  });

  final StateStatus stateStatus;
  final String? error;

  HomeState copyWith({
    StateStatus? stateStatus,
    String? error,
  }) {
    return HomeState(
      stateStatus: stateStatus ?? this.stateStatus,
      error: error,
    );
  }

  @override
  List<Object?> get props => [stateStatus, error];
}
