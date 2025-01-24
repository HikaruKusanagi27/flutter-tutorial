import 'package:flutter/material.dart';
import 'package:test/animation/animation_page.dart';
import 'package:test/building/building_layout_page.dart';
import 'package:test/merucari/merucari_page.dart';
import 'package:test/youtube/youtube_page.dart';

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
                    MaterialPageRoute(
                        builder: (context) => BuildingLayoutPage()),
                  );
                },
                child: Text('Tutorial1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnimationPage()),
                  );
                },
                child: Text('Tutorial1-1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => YoutubePage()),
                  );
                },
                child: Text('2.1 YouTube')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MerucariPage()),
                  );
                },
                child: Text('2.3 mercari')),
          ],
        ),
      ),
    );
  }
}
