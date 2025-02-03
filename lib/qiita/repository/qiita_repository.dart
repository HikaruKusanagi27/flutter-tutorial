import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/qiita/api/qiita_api_client.dart';
import 'package:test/qiita/ui/qiita_state.dart';

part 'qiita_repository.g.dart';

final dioProvider = Provider<Dio>((_) {
  return Dio()..interceptors.add(PrettyDioLogger());
});

final qiitaApiClientProvider = Provider((ref) {
  final dio = ref.read(dioProvider);
  return QiitaApiClient(dio);
});

@riverpod
QiitaRepository qiitaRepository(
  QiitaRepositoryRef ref,
) =>
    QiitaRepository(ref);

class QiitaRepository {
  QiitaRepository(this._ref);

  final Ref _ref;

  QiitaApiClient get _apiClient => _ref.read(qiitaApiClientProvider);

  Future<List<QiitaItem>> fetchQiitaItems(String tag) async {
    return _apiClient.fetchQiitaItems(tag);
  }
}
