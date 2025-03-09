// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      category1Id: (json['category1Id'] as num).toInt(),
      category1Name: json['category1Name'] as String,
      category2Id: (json['category2Id'] as num).toInt(),
      category2Name: json['category2Name'] as String,
      category3Id: (json['category3Id'] as num).toInt(),
      category3Name: json['category3Name'] as String,
      eventCodeId: (json['eventCodeId'] as num).toInt(),
      eventId: (json['eventId'] as num).toInt(),
      eventName: json['eventName'] as String,
      eventStart: (json['eventStart'] as num).toInt(),
      eventType: (json['eventType'] as num).toInt(),
      gamesCount: (json['gamesCount'] as num).toInt(),
      remoteId: (json['remoteId'] as num).toInt(),
      eventExtendedData: (json['eventExtendedData'] as List<dynamic>?)
          ?.map((e) => EventExtendedData.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventGames: (json['eventGames'] as List<dynamic>?)
          ?.map((e) => EventGame.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'category1Id': instance.category1Id,
      'category1Name': instance.category1Name,
      'category2Id': instance.category2Id,
      'category2Name': instance.category2Name,
      'category3Id': instance.category3Id,
      'category3Name': instance.category3Name,
      'eventCodeId': instance.eventCodeId,
      'eventId': instance.eventId,
      'eventName': instance.eventName,
      'eventStart': instance.eventStart,
      'eventType': instance.eventType,
      'gamesCount': instance.gamesCount,
      'remoteId': instance.remoteId,
      'eventExtendedData': instance.eventExtendedData,
      'eventGames': instance.eventGames,
    };
