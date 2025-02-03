import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/qiita/repository/qiita_repository.dart';
import 'package:test/qiita/ui/qiita_state.dart';

part 'qiita_view_model.g.dart';

@riverpod
class QiitaViewModel extends _$QiitaViewModel {
  QiitaRepository get _qiitaRepository => ref.read(qiitaRepositoryProvider);

  @override
  QiitaState build() {
    return const QiitaState();
  }

  Future<void> fetchQiitaItems(String tag) async {
    state = state.copyWith(isLoading: true);

    final qiitaItems = await _qiitaRepository.fetchQiitaItems(tag);

    if (qiitaItems.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        currentTag: tag,
        qiitaItems: qiitaItems,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
        qiitaItems: qiitaItems,
      );
    }
  }

  Future<void> onBackHome() async {
    state = state.copyWith(
      isLoading: false,
      isReadyData: false,
      currentTag: '',
    );
  }
}
