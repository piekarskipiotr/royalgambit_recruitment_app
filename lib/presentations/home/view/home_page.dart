import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royalgambit_recruitment_app/presentations/home/bloc/home_bloc.dart';
import 'package:royalgambit_recruitment_app/presentations/home/view/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(fuksiarzRepository: context.read()),
      child: const HomeView(),
    );
  }
}
