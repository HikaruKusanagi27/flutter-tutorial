import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:confetti/confetti.dart';
import 'dart:math' show pi;
import 'package:test/countupgame/ui/count_up_game_home_page.dart';
import 'package:test/countupgame/ui/count_up_game_view_model.dart';

class CountUpGamePage extends ConsumerStatefulWidget {
  const CountUpGamePage({super.key});

  @override
  ConsumerState<CountUpGamePage> createState() => _CountUpGamePageState();
}

class _CountUpGamePageState extends ConsumerState<CountUpGamePage> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 10));
    startTimer();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void startTimer() {
    Future.delayed(const Duration(seconds: 1), () {
      if (!mounted) {
        return;
      }
      final notifier = ref.read(gameStateProvider.notifier);
      if (ref.read(gameStateProvider).remainingSeconds > 0) {
        notifier.updateRemainingSeconds();
        startTimer();
      } else {
        final score = ref.read(gameStateProvider).count;
        ref.read(highScoreProvider.notifier).updateHighScore(score);
      }
    });
  }

  void _incrementCount() {
    final currentCount = ref.read(gameStateProvider).count + 1;
    ref.read(gameStateProvider.notifier).incrementCount();

    final highScore = ref.read(highScoreProvider).value ?? 0;
    if (currentCount > highScore) {
      _confettiController.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    final gameState = ref.watch(gameStateProvider);
    final highScore = ref.watch(highScoreProvider).value ?? 0;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const MaterialColor(0xFFFEADDFF, {}),
        title: const Text('Count Up Game'),
      ),
      body: Stack(
        children: [
          //ハイスコアを超えている場合、ゲームが終了している場合
          if (gameState.count > highScore && gameState.remainingSeconds == 0)
            Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirection: pi / 2,
                maxBlastForce: 5,
                minBlastForce: 2,
                emissionFrequency: 0.05,
                numberOfParticles: 50,
                gravity: 0.1,
              ),
            ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (gameState.remainingSeconds > 0)
                  Text(
                    'あと${gameState.remainingSeconds}秒です',
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                else
                  Text(
                    gameState.count > highScore ? 'おめでとう！！記録更新！！' : '終了',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                Text(
                  '${gameState.count}',
                  style: const TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                if (gameState.remainingSeconds > 0)
                  SizedBox(
                    height: 200,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const MaterialColor(0xFFF65558F, {}),
                      ),
                      onPressed: _incrementCount,
                      child: const Icon(
                        Icons.add,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  )
                else
                  Column(
                    children: [
                      SizedBox(
                        height: 200,
                        width: 300,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const MaterialColor(0xFFF65558F, {}),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CountUpGameHomePage(),
                              ),
                            );
                          },
                          child: const Text(
                            '結果',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
