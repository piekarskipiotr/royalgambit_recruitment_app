// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuickSearchRequest _$QuickSearchRequestFromJson(Map<String, dynamic> json) =>
    QuickSearchRequest(
      areas: (json['areas'] as List<dynamic>).map((e) => e as String).toList(),
      languageCode: json['languageCode'] as String,
      limit: json['limit'] as String,
      mergeLanguages: (json['mergeLanguages'] as num).toInt(),
      modes: (json['modes'] as List<dynamic>).map((e) => e as String).toList(),
      pattern: json['pattern'] as String,
    );

Map<String, dynamic> _$QuickSearchRequestToJson(QuickSearchRequest instance) =>
    <String, dynamic>{
      'areas': instance.areas,
      'languageCode': instance.languageCode,
      'limit': instance.limit,
      'mergeLanguages': instance.mergeLanguages,
      'modes': instance.modes,
      'pattern': instance.pattern,
    };
