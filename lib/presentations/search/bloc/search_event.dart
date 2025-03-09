part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

final class Search extends SearchEvent {
  const Search(this.phrase);

  final String? phrase;

  @override
  List<Object?> get props => [phrase];
}

final class ClearSearch extends SearchEvent {
  const ClearSearch();

  @override
  List<Object?> get props => [];
}
