part of 'search_bloc.dart';

class SearchState extends Equatable {
  const SearchState({
    required this.textEditingController,
    this.stateStatus = StateStatus.initial,
    this.results,
    this.error,
  });

  final StateStatus stateStatus;
  final TextEditingController textEditingController;
  final List<dynamic>? results;
  final String? error;

  SearchState copyWith({
    StateStatus? stateStatus,
    TextEditingController? textEditingController,
    List<dynamic>? results,
    String? error,
  }) {
    return SearchState(
      stateStatus: stateStatus ?? this.stateStatus,
      textEditingController: textEditingController ?? this.textEditingController,
      results: results ?? this.results,
      error: error,
    );
  }

  @override
  List<Object?> get props => [stateStatus, textEditingController, results, error];
}
