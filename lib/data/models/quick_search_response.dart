import 'package:json_annotation/json_annotation.dart';
import 'package:royalgambit_recruitment_app/data/models/quick_search_data.dart';

part 'quick_search_response.g.dart';

@JsonSerializable()
class QuickSearchResponse {
  const QuickSearchResponse({
    required this.code,
    required this.description,
    required this.data,
  });

  factory QuickSearchResponse.fromJson(Map<String, dynamic> json) => _$QuickSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$QuickSearchResponseToJson(this);

  final int code;
  final String description;
  final List<QuickSearchData>? data;
}
