import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:royalgambit_recruitment_app/resources/resources.dart';

void main() {
  test('app_icons assets test', () {
    expect(File(AppIcons.add).existsSync(), isTrue);
    expect(File(AppIcons.arrowLeft).existsSync(), isTrue);
    expect(File(AppIcons.calendar).existsSync(), isTrue);
    expect(File(AppIcons.cancel).existsSync(), isTrue);
    expect(File(AppIcons.filters).existsSync(), isTrue);
    expect(File(AppIcons.hot).existsSync(), isTrue);
    expect(File(AppIcons.loop).existsSync(), isTrue);
    expect(File(AppIcons.ondemand).existsSync(), isTrue);
    expect(File(AppIcons.search).existsSync(), isTrue);
    expect(File(AppIcons.warning).existsSync(), isTrue);
  });
}
