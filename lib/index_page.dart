import 'package:flutter/material.dart';
import 'package:test/animation/animation_page.dart';
import 'package:test/async/async_page.dart';
import 'package:test/building/building_layout_page.dart';
import 'package:test/qiita/ui/qiita_page.dart';
import 'package:test/merucari/ui/merucari_page.dart';
import 'package:test/residence/ui/residence_page.dart';
import 'package:test/youtube/ui/youtube_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<BuildingLayoutPage>(
                    builder: (context) => const BuildingLayoutPage(),
                  ),
                );
              },
              child: const Text('Tutorial1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<AnimationPage>(
                    builder: (context) => const AnimationPage(),
                  ),
                );
              },
              child: const Text('Tutorial1-1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<YoutubePage>(
                    builder: (context) => const YoutubePage(),
                  ),
                );
              },
              child: const Text('2.1 YouTube'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<ResidencePage>(
                    builder: (context) => const ResidencePage(),
                  ),
                );
              },
              child: const Text('2.2 Residence'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<MerucariPage>(
                    builder: (context) => const MerucariPage(),
                  ),
                );
              },
              child: const Text('2.3 mercari'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<AsyncPage>(
                    builder: (context) => const AsyncPage(),
                  ),
                );
              },
              child: const Text('Async'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<QiitaPage>(
                    builder: (context) => const QiitaPage(),
                  ),
                );
              },
              child: const Text('Tutorial6 MVVM'),
            ),
          ],
        ),
      ),
    );
  }
}
