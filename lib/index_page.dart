import 'package:flutter/material.dart';
import 'package:test/building/building_layout_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BuildingLayoutPage()),
              );
            },
            child: Text('Tutorial1')),
      ),
    );
  }
}
