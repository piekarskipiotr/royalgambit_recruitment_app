import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royalgambit_recruitment_app/presentations/search/bloc/search_bloc.dart';
import 'package:royalgambit_recruitment_app/presentations/search/view/search_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchBloc(fuksiarzRepository: context.read()),
      child: const SearchView(),
    );
  }
}
