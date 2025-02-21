import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'count_up_game_state.dart';

part 'count_up_game_view_model.g.dart';

@riverpod
class HighScore extends _$HighScore {
  @override
  Future<int> build() async {
    return _loadHighScore();
  }

  Future<int> _loadHighScore() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('highScore') ?? 0;
  }

  Future<void> updateHighScore(int score) async {
    final currentScore = await future;
    if (score > currentScore) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('highScore', score);
      ref.invalidateSelf(); // 状態を更新
    }
  }
}

@riverpod
class GameState extends _$GameState {
  @override
  CountUpGameState build() {
    return const CountUpGameState();
  }

  void incrementCount() {
    state = state.copyWith(count: state.count + 1);
  }

  void updateRemainingSeconds() {
    if (state.remainingSeconds > 0) {
      state = state.copyWith(remainingSeconds: state.remainingSeconds - 1);
    } else {
      state = state.copyWith(isGameOver: true);
    }
  }

  void resetGame() {
    state = const CountUpGameState();
  }
}
