import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/youtube/repository/youtube_repository.dart';
import 'package:test/youtube/ui/youtube_state.dart';

part 'youtube_view_model.g.dart';

@riverpod
class YoutubeViewModel extends _$YoutubeViewModel {
  YoutubeRepository get _youtubeRepository =>
      ref.read(youtubeRepositoryProvider);

  @override
  YoutubeState build() {
    return const YoutubeState();
  }

  Future<void> fetchYotubeItems() async {
    state = state.copyWith(isLoading: true);

    final youtubeItems = await _youtubeRepository.fetchYoutubeItems();

    if (youtubeItems.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        youtubeItems: youtubeItems,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
        youtubeItems: youtubeItems,
      );
    }
  }
}
