// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuksiarz_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$FuksiarzApi extends FuksiarzApi {
  _$FuksiarzApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = FuksiarzApi;

  @override
  Future<Response<Map<String, dynamic>>> fetchEvents(
      {required int categoryId}) {
    final Uri $url = Uri.parse('market/categories/multi/${categoryId}/events/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> search(
      {required Map<String, dynamic> body}) {
    final Uri $url = Uri.parse('search/events/quick-search/');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
