import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/youtube/api/youtube_api_client.dart';
import 'package:test/youtube/ui/youtube_state.dart';

part 'youtube_repository.g.dart';

final dioProvider = Provider<Dio>((_) {
  return Dio()..interceptors.add(PrettyDioLogger());
});

final youtubeApiClientProvider = Provider((ref) {
  final dio = ref.read(dioProvider);
  return YoutubeApiClient(dio);
});

@riverpod
YoutubeRepository youtubeRepository(
  YoutubeRepositoryRef ref,
) =>
    YoutubeRepository(ref);

class YoutubeRepository {
  YoutubeRepository(this._ref);

  final Ref _ref;

  YoutubeApiClient get _apiClient => _ref.read(youtubeApiClientProvider);

  Future<List<YoutubeItem>> fetchYoutubeItems() async {
    return _apiClient.fetchYoutubeItems();
  }
}
