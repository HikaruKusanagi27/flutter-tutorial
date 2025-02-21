import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_up_game_state.freezed.dart';

@freezed
class CountUpGameState with _$CountUpGameState {
  const factory CountUpGameState({
    @Default(0) int count,
    @Default(0) int highScore,
    @Default(10) int remainingSeconds,
    @Default(false) bool isGameOver,
  }) = _CountUpGameState;
}
