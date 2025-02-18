import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/residence/api/residence_api_client.dart';
import 'package:test/residence/ui/residence_state.dart';

part 'residence_repository.g.dart';

final dioProvider = Provider<Dio>((_) {
  return Dio()..interceptors.add(PrettyDioLogger());
});

final residenceApiClientProvider = Provider((ref) {
  final dio = ref.read(dioProvider);
  return ResidenceApiClient(dio);
});

@riverpod
ResidenceRepository residenceRepository(
  ResidenceRepositoryRef ref,
) =>
    ResidenceRepository(ref);

class ResidenceRepository {
  ResidenceRepository(this._ref);

  final Ref _ref;

  ResidenceApiClient get _apiClient => _ref.read(residenceApiClientProvider);

  Future<List<ResidenceItem>> fetchResidenceItems() async {
    return _apiClient.fetchResidenceItems();
  }
}
