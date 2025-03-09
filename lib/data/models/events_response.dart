import 'package:json_annotation/json_annotation.dart';
import 'package:royalgambit_recruitment_app/data/models/event.dart';

part 'events_response.g.dart';

@JsonSerializable()
class EventsResponse {
  const EventsResponse({
    required this.code,
    required this.description,
    required this.data,
  });

  factory EventsResponse.fromJson(Map<String, dynamic> json) => _$EventsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventsResponseToJson(this);

  final int code;
  final String description;
  final List<Event>? data;
}
