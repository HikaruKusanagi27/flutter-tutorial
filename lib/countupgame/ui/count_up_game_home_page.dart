import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/countupgame/ui/count_up_game_view_model.dart';
import 'package:test/countupgame/ui/count_up_game_page.dart';

class CountUpGameHomePage extends ConsumerWidget {
  const CountUpGameHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final highScore = ref.watch(highScoreProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const MaterialColor(0xFFFEADDFF, {}),
        title: const Text('Count Up Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '最新記録',
              style: TextStyle(fontSize: 50),
            ),
            highScore.when(
              data: (score) => Text(
                '$score',
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              loading: () => const CircularProgressIndicator(),
              error: (_, __) => const Text('エラーが発生しました'),
            ),
            SizedBox(
              width: 200,
              height: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const MaterialColor(0xFFF65558F, {}),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const CountUpGamePage(),
                    ),
                  );
                },
                child: const Text(
                  'はじめる',
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
      ),
    );
  }
}


// showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         backgroundColor: const MaterialColor(0xFFFEADDFF, {}),
//                         title: const Text(
//                           'ゲームが中断されました',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         content: const Text(
//                           'ゲームを再開しますか？',
//                           style: TextStyle(
//                             color: Colors.black,
//                           ),
//                         ),
//                         actions: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             child: const Text(
//                               'タイトルへ',
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             child: const Text(
//                               'はい',
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ],
//                       );
//                     },
//                   );