import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royalgambit_recruitment_app/presentations/home/view/home_mobile_view.dart';
import 'package:royalgambit_recruitment_app/presentations/home/view/home_web_view.dart';
import 'package:royalgambit_recruitment_app/router/router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void _onSearchPressed(BuildContext context) {
    context.read<AppRouter>().showSearch();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWebView = constraints.maxWidth > 600;
        return isWebView
            ? HomeWebView(
                onSearchPressed: () {
                  _onSearchPressed(context);
                },
              )
            : HomeMobileView(
                onSearchPressed: () {
                  _onSearchPressed(context);
                },
              );
      },
    );
  }
}
