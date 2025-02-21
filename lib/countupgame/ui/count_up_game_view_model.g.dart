// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_up_game_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$highScoreHash() => r'fb5c7833fa368d247606adc4dd462f468ace9b6c';

/// See also [HighScore].
@ProviderFor(HighScore)
final highScoreProvider =
    AutoDisposeAsyncNotifierProvider<HighScore, int>.internal(
  HighScore.new,
  name: r'highScoreProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$highScoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HighScore = AutoDisposeAsyncNotifier<int>;
String _$gameStateHash() => r'c74ee1c3226de5bb926add2b08e6be40be012e40';

/// See also [GameState].
@ProviderFor(GameState)
final gameStateProvider =
    AutoDisposeNotifierProvider<GameState, CountUpGameState>.internal(
  GameState.new,
  name: r'gameStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gameStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GameState = AutoDisposeNotifier<CountUpGameState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
