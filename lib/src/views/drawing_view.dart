import 'package:flutter/material.dart';
import 'package:flutter_onedollar_handtrace/flutter_onedollar_handtrace.dart';

class DrawingView extends StatefulWidget {
  final GlobalKey<DrawingViewState> key;
  final Color lineColor;
  final double strokeWidth;

  DrawingView(
      {required this.key, this.lineColor = Colors.red, this.strokeWidth = 4.0})
      : super(key: key);

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
      painter: _GesturePainter(
        points,
        lineColor: widget.lineColor,
        strokeWidth: widget.strokeWidth,
      ),
    );
  }
}

class _GesturePainter extends CustomPainter {
  final List<Point> points;
  final Color lineColor;
  final double strokeWidth;

  _GesturePainter(this.points,
      {required this.lineColor, required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = lineColor
      ..strokeWidth = strokeWidth
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
