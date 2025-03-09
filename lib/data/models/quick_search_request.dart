import 'package:json_annotation/json_annotation.dart';

part 'quick_search_request.g.dart';

@JsonSerializable()
class QuickSearchRequest {
  const QuickSearchRequest({
    required this.areas,
    required this.languageCode,
    required this.limit,
    required this.mergeLanguages,
    required this.modes,
    required this.pattern,
  });

  factory QuickSearchRequest.fromJson(Map<String, dynamic> json) => _$QuickSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$QuickSearchRequestToJson(this);

  final List<String> areas;
  final String languageCode;
  final String limit;
  final int mergeLanguages;
  final List<String> modes;
  final String pattern;
}
