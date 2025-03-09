import 'package:json_annotation/json_annotation.dart';

import 'package:royalgambit_recruitment_app/data/models/outcome.dart';

part 'event_game.g.dart';

@JsonSerializable()
class EventGame {
  const EventGame({
    required this.argument,
    required this.combinationType,
    required this.eventLayout,
    required this.gameCode,
    required this.gameId,
    required this.gameLayout,
    required this.gameName,
    required this.gameType,
    required this.marketTypes,
    required this.periodId,
    required this.outcomes,
  });

  factory EventGame.fromJson(Map<String, dynamic> json) => _$EventGameFromJson(json);

  Map<String, dynamic> toJson() => _$EventGameToJson(this);

  final double? argument;
  final int combinationType;
  final int eventLayout;
  final int gameCode;
  final double gameId;
  final bool gameLayout;
  final int gameName;
  final int gameType;
  final List<int> marketTypes;
  final int periodId;
  final List<Outcome> outcomes;
}
