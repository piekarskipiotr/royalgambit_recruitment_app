import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/l10n/l10n.dart';
import 'package:royalgambit_recruitment_app/router/router.dart';

class App extends StatelessWidget {
  const App({
    required AppRouter router,
    required FuksiarzRepository fuksiarzRepository,
    super.key,
  })  : _router = router,
        _fuksiarzRepository = fuksiarzRepository;

  final AppRouter _router;
  final FuksiarzRepository _fuksiarzRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _router),
        RepositoryProvider.value(value: _fuksiarzRepository),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routeInformationProvider: _router.instance.routeInformationProvider,
            routeInformationParser: _router.instance.routeInformationParser,
            routerDelegate: _router.instance.routerDelegate,
          );
        },
      ),
    );
  }
}
