import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test/residence/ui/residence_state.dart';
part 'residence_api_client.g.dart';

@RestApi(
  baseUrl: 'https://flutter-tutorial-app-bc98f.web.app/api/v1/',
)
abstract class ResidenceApiClient {
  factory ResidenceApiClient(Dio dio, {String baseUrl}) = _ResidenceApiClient;

  @GET('residence_app.json')
  Future<List<ResidenceItem>> fetchResidenceItems();
}
