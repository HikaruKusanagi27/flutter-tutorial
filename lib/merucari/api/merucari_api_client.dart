import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test/merucari/ui/merucari_state.dart';
part 'merucari_api_client.g.dart';

@RestApi(
  baseUrl: 'https://flutter-tutorial-app-bc98f.web.app/api/v1/',
)
abstract class MerucariApiClient {
  factory MerucariApiClient(Dio dio, {String baseUrl}) = _MerucariApiClient;

  @GET('merucari_app.json')
  Future<List<MerucariItem>> fetchMerucariItems();
}
