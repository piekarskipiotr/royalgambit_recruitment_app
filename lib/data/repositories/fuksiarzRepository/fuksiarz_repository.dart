import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:royalgambit_recruitment_app/data/models/models.dart';
import 'package:royalgambit_recruitment_app/network/fuksiarzApi/fuksiarz_api.dart';

class FuksiarzRepository {
  FuksiarzRepository(this._fuksiarzApi);

  final FuksiarzApi _fuksiarzApi;

  void _validateResponseCode(int code, String description) {
    final isResponseSuccessful = code >= 200 && code < 300;
    if (!isResponseSuccessful) {
      throw Exception(description);
    }
  }

  bool _isSuccessful<T>(Response<T> response, {bool hasBody = true}) {
    final isResponseSuccessful = response.isSuccessful;
    final bool isBodySuccessful;
    if (hasBody) {
      isBodySuccessful = response.bodyString.isNotEmpty;
    } else {
      isBodySuccessful = true;
    }

    return isResponseSuccessful && isBodySuccessful;
  }

  Future<List<QuickSearchData>> search({required String phrase}) async {
    // For simplify sake: hardcoded params
    final request = QuickSearchRequest(
      areas: ['LIVE_EVENT', 'PREMATCH_EVENT'],
      languageCode: 'pl',
      limit: '100',
      mergeLanguages: 1,
      modes: ['INFIX', 'PREFIX'],
      pattern: phrase,
    );

    final response = await _fuksiarzApi.search(body: request.toJson());
    if (_isSuccessful(response)) {
      try {
        final jsonResponse = response.body!;
        final quickSearchResponse = QuickSearchResponse.fromJson(jsonResponse);
        _validateResponseCode(quickSearchResponse.code, quickSearchResponse.description);

        return quickSearchResponse.data!;
      } catch (e) {
        log('Error: $e');
        throw Exception('Failed search $e');
      }
    } else {
      log('Search API error: ${response.error}');
      throw Exception(response.error);
    }
  }

  Future<List<Event>> fetchEvents({required int categoryId}) async {
    final response = await _fuksiarzApi.fetchEvents(categoryId: categoryId);
    if (_isSuccessful(response)) {
      try {
        final jsonResponse = response.body!;
        final eventsResponse = EventsResponse.fromJson(jsonResponse);
        _validateResponseCode(eventsResponse.code, eventsResponse.description);

        return eventsResponse.data!;
      } catch (e) {
        log('Error: $e');
        throw Exception('Failed fetch events $e');
      }
    } else {
      log('Search API error: ${response.error}');
      throw Exception(response.error);
    }
  }
}
