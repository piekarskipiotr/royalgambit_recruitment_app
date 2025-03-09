import 'package:royalgambit_recruitment_app/app.dart';
import 'package:royalgambit_recruitment_app/bootstrap.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/network/network.dart';
import 'package:royalgambit_recruitment_app/router/router.dart';

void main() {
  bootstrap(() async {
    // Router
    final router = AppRouter();

    // APIs
    final fuksiarzApi = FuksiarzApi.create('https://fuksiarz.pl/rest/', enableLogs: false);

    // Repositories
    final fuksiarzRepository = FuksiarzRepository(fuksiarzApi);

    return App(
      router: router,
      fuksiarzRepository: fuksiarzRepository,
    );
  });
}
