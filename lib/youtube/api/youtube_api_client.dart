import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test/youtube/ui/youtube_state.dart';

part 'youtube_api_client.g.dart';

@RestApi(
  baseUrl: 'https://flutter-tutorial-app-bc98f.web.app/api/v1/',
)
abstract class YoutubeApiClient {
  factory YoutubeApiClient(Dio dio, {String baseUrl}) = _YoutubeApiClient;

  @GET('youtube_app.json')
  Future<List<YoutubeItem>> fetchYoutubeItems();
}
