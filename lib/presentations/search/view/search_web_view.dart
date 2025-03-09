import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/presentations/search/bloc/search_bloc.dart';
import 'package:royalgambit_recruitment_app/presentations/search/widgets/widgets.dart';

class SearchWebView extends StatelessWidget {
  const SearchWebView({
    required this.onPhraseChanged,
    required this.onPrefixIconPressed,
    required this.onSuffixIconPressed,
    super.key,
  });

  final void Function(String) onPhraseChanged;
  final VoidCallback onPrefixIconPressed;
  final VoidCallback onSuffixIconPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        final textController = state.textEditingController;
        return AppWebScaffold(
          leftChild: Padding(
            padding: const EdgeInsets.all(16),
            child: SearchTextFormField(
              textController: textController,
              onPhraseChanged: onPhraseChanged,
              onPrefixIconPressed: onPrefixIconPressed,
              onSuffixIconPressed: onSuffixIconPressed,
            ),
          ),
          rightChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _buildContent(state: state),
          ),
        );
      },
    );
  }

  Widget _buildContent({required SearchState state}) {
    final stateStatus = state.stateStatus;
    final results = state.results;
    final areResultsEmpty = results?.isEmpty ?? true;
    return switch (stateStatus) {
      StateStatus.loading => const SearchLoading(),
    // For simplify sake: displaying warning / no results view for failure state
      StateStatus.failure => const SearchWarning(),
      StateStatus.success => areResultsEmpty ? const SearchWarning() : const Expanded(child: SearchResults()),
      _ => const SizedBox.shrink(),
    };
  }
}
