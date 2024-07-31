import 'package:flutter/material.dart';

class PopupResultView extends StatelessWidget {
  final String gestureName;
  final double score;

  PopupResultView({required this.gestureName, required this.score});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Gesture Recognized',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text('Name: $gestureName'),
            Text('Score: $score'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}