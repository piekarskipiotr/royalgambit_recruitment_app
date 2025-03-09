import 'dart:ui';

import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/resources/resources.dart';

enum EventChips {
  tv,
  hot;

  String get label => switch (this) {
        EventChips.tv => 'TV',
        EventChips.hot => 'HOT',
      };

  String get icon => switch (this) {
        EventChips.tv => AppIcons.ondemand,
        EventChips.hot => AppIcons.hot,
      };

  Color get backgroundColor => switch (this) {
        EventChips.tv => AppColors.borderColor,
        EventChips.hot => AppColors.accentColor,
      };
}
