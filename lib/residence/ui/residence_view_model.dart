import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/residence/repository/residence_repository.dart';
import 'package:test/residence/ui/residence_state.dart';

part 'residence_view_model.g.dart';

@riverpod
class ResidenceViewModel extends _$ResidenceViewModel {
  ResidenceRepository get _residenceRepository =>
      ref.read(residenceRepositoryProvider);

  @override
  ResidenceState build() {
    state = const ResidenceState(); // 初期化メソッド
    fetchResidenceItems();
    return state;
  }

  Future<void> fetchResidenceItems() async {
    state = state.copyWith(isLoading: true);

    await Future<void>.delayed(
      const Duration(seconds: 1),
    ); // インディケーターの挙動確認のため実装
    final residenceItems = await _residenceRepository.fetchResidenceItems();

    if (residenceItems.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        residenceItems: residenceItems,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
        residenceItems: residenceItems,
      );
    }
  }
}
