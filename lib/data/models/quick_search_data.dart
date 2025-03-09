import 'package:json_annotation/json_annotation.dart';

part 'quick_search_data.g.dart';

@JsonSerializable()
class QuickSearchData {
  const QuickSearchData({
    required this.area,
    required this.name,
    required this.id,
    required this.score,
    this.extras,
  });

  factory QuickSearchData.fromJson(Map<String, dynamic> json) => _$QuickSearchDataFromJson(json);

  Map<String, dynamic> toJson() => _$QuickSearchDataToJson(this);

  final String area;
  final String name;
  final int id;
  final double score;
  final Map<String, dynamic>? extras;
}
