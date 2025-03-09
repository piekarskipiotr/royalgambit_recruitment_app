// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_search_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuickSearchData _$QuickSearchDataFromJson(Map<String, dynamic> json) =>
    QuickSearchData(
      area: json['area'] as String,
      name: json['name'] as String,
      id: (json['id'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      extras: json['extras'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$QuickSearchDataToJson(QuickSearchData instance) =>
    <String, dynamic>{
      'area': instance.area,
      'name': instance.name,
      'id': instance.id,
      'score': instance.score,
      'extras': instance.extras,
    };
