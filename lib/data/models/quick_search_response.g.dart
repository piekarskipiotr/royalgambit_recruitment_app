// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuickSearchResponse _$QuickSearchResponseFromJson(Map<String, dynamic> json) =>
    QuickSearchResponse(
      code: (json['code'] as num).toInt(),
      description: json['description'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => QuickSearchData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuickSearchResponseToJson(
        QuickSearchResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'data': instance.data,
    };
