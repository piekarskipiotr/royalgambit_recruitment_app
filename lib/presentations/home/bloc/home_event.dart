part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

final class FetchEvents extends HomeEvent {
  const FetchEvents();

  @override
  List<Object?> get props => [];
}
