import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royalgambit_recruitment_app/presentations/search/bloc/search_bloc.dart';
import 'package:royalgambit_recruitment_app/presentations/search/view/search_mobile_view.dart';
import 'package:royalgambit_recruitment_app/presentations/search/view/search_web_view.dart';
import 'package:royalgambit_recruitment_app/router/app_router.dart';
import 'package:royalgambit_recruitment_app/router/app_router_navigation.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  void _onArrowBackPressed(BuildContext context) {
    context.read<AppRouter>().pop();
  }

  void _onPhraseChanged(BuildContext context, String? phrase) {
    context.read<SearchBloc>().add(Search(phrase));
  }

  void _onClearSearchPressed(BuildContext context) {
    context.read<SearchBloc>().add(const ClearSearch());
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWebView = constraints.maxWidth > 600;
        return isWebView
            ? SearchWebView(
                onPhraseChanged: (phrase) {
                  _onPhraseChanged(context, phrase);
                },
                onPrefixIconPressed: () {
                  _onArrowBackPressed(context);
                },
                onSuffixIconPressed: () {
                  _onClearSearchPressed(context);
                },
              )
            : SearchMobileView(
                onPhraseChanged: (phrase) {
                  _onPhraseChanged(context, phrase);
                },
                onPrefixIconPressed: () {
                  _onArrowBackPressed(context);
                },
                onSuffixIconPressed: () {
                  _onClearSearchPressed(context);
                },
              );
      },
    );
  }
}
