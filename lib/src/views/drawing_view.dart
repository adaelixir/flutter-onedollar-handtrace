import 'package:flutter/material.dart';
import '../recognizers/common/data/point.dart';

class DrawingView extends StatefulWidget {
  final GlobalKey<_DrawingViewState> key;

  DrawingView({required this.key}) : super(key: key);

  @override
  _DrawingViewState createState() => _DrawingViewState();

  void setDrawing(bool isDrawing) {
    key.currentState?.setDrawing(isDrawing);
  }

  void updatePoints(List<Point> points) {
    key.currentState?.updatePoints(points);
  }
}

class _DrawingViewState extends State<DrawingView> {
  List<Point> _points = [];
  bool _isDrawing = false;

  @override
  void initState() {
    super.initState();
  }

  void updatePoints(List<Point> points) {
    setState(() {
      _points = points;
    });
  }

  void setDrawing(bool isDrawing) {
    setState(() {
      _isDrawing = isDrawing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DrawingPainter(_points),
    );
  }
}

class _DrawingPainter extends CustomPainter {
  final List<Point> points;

  _DrawingPainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(
          Offset(points[i].x, points[i].y),
          Offset(points[i + 1].x, points[i + 1].y),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
