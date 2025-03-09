import 'package:json_annotation/json_annotation.dart';

part 'outcome.g.dart';

@JsonSerializable()
class Outcome {
  const Outcome({
    required this.outcomeId,
    required this.outcomeName,
    required this.outcomeOdds,
    required this.status,
  });

  factory Outcome.fromJson(Map<String, dynamic> json) => _$OutcomeFromJson(json);

  Map<String, dynamic> toJson() => _$OutcomeToJson(this);

  final int outcomeId;
  final String outcomeName;
  final double outcomeOdds;
  final int status;
}
