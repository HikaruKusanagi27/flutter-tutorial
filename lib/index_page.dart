import 'package:flutter/material.dart';
import 'package:test/animation/animation_page.dart';
import 'package:test/building/building_layout_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BuildingLayoutPage()),
                  );
                },
                child: Text('Tutorial1')),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnimationPage()),
                  );
                },
                child: Text('Tutorial1-1')),
          ),
        ],
      ),
    );
  }
}
