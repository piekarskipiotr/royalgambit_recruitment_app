// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventGame _$EventGameFromJson(Map<String, dynamic> json) => EventGame(
      argument: (json['argument'] as num?)?.toDouble(),
      combinationType: (json['combinationType'] as num).toInt(),
      eventLayout: (json['eventLayout'] as num).toInt(),
      gameCode: (json['gameCode'] as num).toInt(),
      gameId: (json['gameId'] as num).toDouble(),
      gameLayout: json['gameLayout'] as bool,
      gameName: (json['gameName'] as num).toInt(),
      gameType: (json['gameType'] as num).toInt(),
      marketTypes: (json['marketTypes'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      periodId: (json['periodId'] as num).toInt(),
      outcomes: (json['outcomes'] as List<dynamic>)
          .map((e) => Outcome.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventGameToJson(EventGame instance) => <String, dynamic>{
      'argument': instance.argument,
      'combinationType': instance.combinationType,
      'eventLayout': instance.eventLayout,
      'gameCode': instance.gameCode,
      'gameId': instance.gameId,
      'gameLayout': instance.gameLayout,
      'gameName': instance.gameName,
      'gameType': instance.gameType,
      'marketTypes': instance.marketTypes,
      'periodId': instance.periodId,
      'outcomes': instance.outcomes,
    };
