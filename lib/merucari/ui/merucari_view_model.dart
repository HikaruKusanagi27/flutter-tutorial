import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/merucari/repository/merucari_repository.dart';
import 'package:test/merucari/ui/merucari_state.dart';

part 'merucari_view_model.g.dart';

@riverpod
class MerucariViewModel extends _$MerucariViewModel {
  MerucariRepository get _merucariRepository =>
      ref.read(merucariRepositoryProvider);

  @override
  MerucariState build() {
    state = const MerucariState(); // 初期化メソッド
    fetchMerucariItems();
    return state;
  }

  Future<void> fetchMerucariItems() async {
    state = state.copyWith(isLoading: true);

    await Future<void>.delayed(
      const Duration(seconds: 1),
    ); // インディケーターの挙動確認のため実装
    final merucariItems = await _merucariRepository.fetchMerucariItems();

    if (merucariItems.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        merucariItems: merucariItems,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
        merucariItems: merucariItems,
      );
    }
  }
}
