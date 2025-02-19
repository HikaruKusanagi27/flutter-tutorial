import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/merucari/api/merucari_api_client.dart';
import 'package:test/merucari/ui/merucari_state.dart';

part 'merucari_repository.g.dart';

final dioProvider = Provider<Dio>((_) {
  return Dio()..interceptors.add(PrettyDioLogger());
});

final merucariApiClientProvider = Provider((ref) {
  final dio = ref.read(dioProvider);
  return MerucariApiClient(dio);
});

@riverpod
MerucariRepository merucariRepository(
  MerucariRepositoryRef ref,
) =>
    MerucariRepository(ref);

class MerucariRepository {
  MerucariRepository(this._ref);

  final Ref _ref;

  MerucariApiClient get _apiClient => _ref.read(merucariApiClientProvider);

  Future<List<MerucariItem>> fetchMerucariItems() async {
    return _apiClient.fetchMerucariItems();
  }
}
