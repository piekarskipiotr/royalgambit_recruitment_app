import 'package:json_annotation/json_annotation.dart';
import 'package:royalgambit_recruitment_app/data/models/event_extended_data.dart';
import 'package:royalgambit_recruitment_app/data/models/event_game.dart';

part 'event.g.dart';

@JsonSerializable()
class Event {
  const Event({
    required this.category1Id,
    required this.category1Name,
    required this.category2Id,
    required this.category2Name,
    required this.category3Id,
    required this.category3Name,
    required this.eventCodeId,
    required this.eventId,
    required this.eventName,
    required this.eventStart,
    required this.eventType,
    required this.gamesCount,
    required this.remoteId,
    this.eventExtendedData,
    this.eventGames,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);

  final int category1Id;
  final String category1Name;
  final int category2Id;
  final String category2Name;
  final int category3Id;
  final String category3Name;
  final int eventCodeId;
  final int eventId;
  final String eventName;
  final int eventStart;
  final int eventType;
  final int gamesCount;
  final int remoteId;
  final List<EventExtendedData>? eventExtendedData;
  final List<EventGame>? eventGames;
}
