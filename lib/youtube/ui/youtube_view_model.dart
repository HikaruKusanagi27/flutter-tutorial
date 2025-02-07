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
    state = const YoutubeState(); // 初期化メソッド
    fetchYoutubeItems();
    return state;
  }

  Future<void> fetchYoutubeItems() async {
    state = state.copyWith(isLoading: true);

    await Future<void>.delayed(
      const Duration(seconds: 1),
    ); // インディケーターの挙動確認のため実装
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
