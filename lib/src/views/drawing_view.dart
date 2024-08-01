import 'package:flutter/material.dart';
import 'package:flutter_onedollar_handtrace/flutter_onedollar_handtrace.dart';

class DrawingView extends StatefulWidget {
  final GlobalKey<DrawingViewState> key;

  DrawingView({required this.key}) : super(key: key);

  @override
  DrawingViewState createState() => DrawingViewState();

  void setDrawing(bool isDrawing) {
    key.currentState?.setDrawing(isDrawing);
  }

  void updatePoints(List<Point> points) {
    key.currentState?.updatePoints(points);
  }
}

class DrawingViewState extends State<DrawingView> {
  bool isDrawing = false;
  List<Point> points = [];

  void setDrawing(bool isDrawing) {
    setState(() {
      this.isDrawing = isDrawing;
    });
  }

  void updatePoints(List<Point> points) {
    setState(() {
      this.points = points;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GesturePainter(points),
    );
  }
}

class _GesturePainter extends CustomPainter {
  final List<Point> points;

  _GesturePainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    if (points.isNotEmpty) {
      for (int i = 0; i < points.length - 1; i++) {
        final p1 = Offset(points[i].x, points[i].y);
        final p2 = Offset(points[i + 1].x, points[i + 1].y);
        canvas.drawLine(p1, p2, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
