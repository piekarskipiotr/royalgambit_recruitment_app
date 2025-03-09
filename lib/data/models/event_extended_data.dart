import 'package:json_annotation/json_annotation.dart';

part 'event_extended_data.g.dart';

@JsonSerializable()
class EventExtendedData {
  const EventExtendedData({
    required this.neutralGround,
    required this.remoteCategoryId,
  });

  factory EventExtendedData.fromJson(Map<String, dynamic> json) => _$EventExtendedDataFromJson(json);

  Map<String, dynamic> toJson() => _$EventExtendedDataToJson(this);

  final String neutralGround;
  final String remoteCategoryId;
}
