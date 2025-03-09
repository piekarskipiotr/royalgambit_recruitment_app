import 'package:chopper/chopper.dart';

part 'fuksiarz_api.chopper.dart';

typedef Json = Map<String, dynamic>;

@ChopperApi()
abstract class FuksiarzApi extends ChopperService {
  static FuksiarzApi create(String baseUrl, {bool enableLogs = true}) {
    final client = ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      interceptors: [
        const HeadersInterceptor({contentTypeKey: jsonHeaders}),
        if (enableLogs) HttpLoggingInterceptor(),
      ],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      services: [_$FuksiarzApi()],
    );

    return _$FuksiarzApi(client);
  }

  @GET(path: 'market/categories/multi/{categoryId}/events/')
  Future<Response<Json>> fetchEvents({@Path('categoryId') required int categoryId});

  @POST(path: 'search/events/quick-search/')
  Future<Response<Json>> search({@Body() required Json body});
}
