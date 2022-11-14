
import 'package:flutter/material.dart';

class ShonaPrayers extends StatelessWidget {
  const ShonaPrayers

  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shona Prayers'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back Home!'),
        ),
      ),
    );
  }
}