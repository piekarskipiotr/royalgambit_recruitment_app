import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:royalgambit_recruitment_app/resources/resources.dart';

void main() {
  test('logo_images assets test', () {
    expect(File(LogoImages.fuksiarz).existsSync(), isTrue);
  });
}
