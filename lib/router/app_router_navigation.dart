import 'package:royalgambit_recruitment_app/router/app_router.dart';
import 'package:royalgambit_recruitment_app/router/app_routes.dart';

extension AppRouterNavigation on AppRouter {
  void showHome() => instance.goNamed(AppRoutes.home);

  void showSearch() => instance.pushNamed(AppRoutes.search);

  void pop() => instance.pop();
}
