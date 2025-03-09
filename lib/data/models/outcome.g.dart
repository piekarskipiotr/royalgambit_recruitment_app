// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outcome.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Outcome _$OutcomeFromJson(Map<String, dynamic> json) => Outcome(
      outcomeId: (json['outcomeId'] as num).toInt(),
      outcomeName: json['outcomeName'] as String,
      outcomeOdds: (json['outcomeOdds'] as num).toDouble(),
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$OutcomeToJson(Outcome instance) => <String, dynamic>{
      'outcomeId': instance.outcomeId,
      'outcomeName': instance.outcomeName,
      'outcomeOdds': instance.outcomeOdds,
      'status': instance.status,
    };
