import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required FuksiarzRepository fuksiarzRepository})
      : _fuksiarzRepository = fuksiarzRepository,
        super(const HomeState()) {
    on<FetchEvents>(_onFetchEvents);

    add(const FetchEvents());
  }

  final FuksiarzRepository _fuksiarzRepository;

  Future<void> _onFetchEvents(FetchEvents event, Emitter<HomeState> emit) async {
    emit(state.copyWith(stateStatus: StateStatus.loading));
    // For simplicity sake hardcoded categoryId
    await _fuksiarzRepository.fetchEvents(categoryId: 220402).then((results) {
      emit(state.copyWith(stateStatus: StateStatus.success));
    }).catchError((Object error, StackTrace stacktrace) async {
      log('FAILED TO FETCH EVENTS, error: $error \n\n $stacktrace');
      emit(state.copyWith(stateStatus: StateStatus.failure, error: error.toString()));
    });
  }
}
