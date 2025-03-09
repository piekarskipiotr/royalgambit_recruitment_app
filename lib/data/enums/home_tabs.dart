import 'package:royalgambit_recruitment_app/l10n/l10n.dart';

enum HomeTabs {
  offer,
  my,
  live,
  hot,
  cashback,
  megaBoost,
  tv;

  String getLabel(AppLocalizations l10n) => switch (this) {
        HomeTabs.offer => l10n.offer,
        HomeTabs.my => l10n.my,
        HomeTabs.live => l10n.live,
        HomeTabs.hot => l10n.hot,
        HomeTabs.cashback => l10n.cashback,
        HomeTabs.megaBoost => l10n.megaBoost,
        HomeTabs.tv => l10n.tv,
      }
          .toUpperCase();
}
