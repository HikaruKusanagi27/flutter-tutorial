import 'package:flutter/material.dart';
import 'package:test/animation/animation_page.dart';
import 'package:test/building/building_layout_page.dart';
import 'package:test/residence/residence_page.dart';

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
                    MaterialPageRoute(builder: (context) => ResidencePage()),
                  );
                },
                child: Text('2.2 Residence')),
          ],
        ),
      ),
    );
  }
}
