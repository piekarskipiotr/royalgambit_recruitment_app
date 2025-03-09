import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:stream_transform/stream_transform.dart';

part 'search_event.dart';
part 'search_state.dart';

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({required FuksiarzRepository fuksiarzRepository})
      : _fuksiarzRepository = fuksiarzRepository,
        super(SearchState(textEditingController: TextEditingController())) {
    on<Search>(_onSearch, transformer: debounce(_debounceDuration));
    on<ClearSearch>(_onClearSearch);
  }

  final FuksiarzRepository _fuksiarzRepository;
  static const _debounceDuration = Duration(milliseconds: 300);

  Future<void> _onSearch(Search event, Emitter<SearchState> emit) async {
    final phrase = event.phrase;
    if (phrase == null || phrase.length < 3) {
      emit(state.copyWith(stateStatus: StateStatus.initial, results: []));
      return;
    }

    emit(state.copyWith(stateStatus: StateStatus.loading));
    await _fuksiarzRepository.search(phrase: phrase).then((results) {
      emit(state.copyWith(stateStatus: StateStatus.success, results: results));
    }).catchError((Object error, StackTrace stacktrace) async {
      log('FAILED TO SEARCH, error: $error \n\n $stacktrace');
      emit(state.copyWith(stateStatus: StateStatus.failure, error: error.toString()));
    });
  }

  Future<void> _onClearSearch(ClearSearch event, Emitter<SearchState> emit) async {
    state.textEditingController.clear();
    emit(state.copyWith(stateStatus: StateStatus.initial, results: []));
  }
}
