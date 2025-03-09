import 'package:royalgambit_recruitment_app/l10n/l10n.dart';

enum CategoryType {
  oldWspolczynnik(id: -1002),
  soccer(id: 1),
  basketball(id: 2),
  baseball(id: 3),
  icehockey(id: 4),
  tennis(id: 5),
  liveEvent(id: 6),
  specialEvent(id: 7),
  handball(id: 8),
  floorball(id: 9),
  golf(id: 10),
  volleyball(id: 11);

  const CategoryType({required this.id});

  final int id;

  String getLabel(AppLocalizations l10n) => switch (this) {
        CategoryType.oldWspolczynnik => l10n.all,
        CategoryType.soccer => l10n.soccer,
        CategoryType.basketball => l10n.basketball,
        CategoryType.baseball => l10n.baseball,
        CategoryType.icehockey => l10n.icehockey,
        CategoryType.tennis => l10n.tennis,
        CategoryType.liveEvent => l10n.liveEvent,
        CategoryType.specialEvent => l10n.specialEvent,
        CategoryType.handball => l10n.handball,
        CategoryType.floorball => l10n.floorball,
        CategoryType.golf => l10n.golf,
        CategoryType.volleyball => l10n.volleyball,
      }
          .toUpperCase();
}
