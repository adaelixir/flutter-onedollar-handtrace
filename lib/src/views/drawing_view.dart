import 'package:flutter/material.dart';
import 'package:flutter_onedollar_handtrace/src/recognizers/common/data/point.dart';

class DrawingView extends StatefulWidget {
  final Color drawingColor;
  final double strokeWidth;

  DrawingView({this.drawingColor = Colors.blue, this.strokeWidth = 4.0});

  final _DrawingViewState _state = _DrawingViewState();

  void updatePoints(List<Point> points) {
    _state.updatePoints(points);
  }

  @override
  _DrawingViewState createState() => _state;
}

class _DrawingViewState extends State<DrawingView> {
  List<Point> _points = [];

  void updatePoints(List<Point> points) {
    setState(() {
      _points = List.from(points);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DrawingPainter(_points, widget.drawingColor, widget.strokeWidth),
      size: Size.infinite,
    );
  }
}

class DrawingPainter extends CustomPainter {
  final List<Point> points;
  final Color drawingColor;
  final double strokeWidth;

  DrawingPainter(this.points, this.drawingColor, this.strokeWidth);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = drawingColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = strokeWidth;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(Offset(points[i].x, points[i].y),
            Offset(points[i + 1].x, points[i + 1].y), paint);
      }
    }
  }

  @override
  bool shouldRepaint(DrawingPainter oldDelegate) =>
      oldDelegate.points != points;
}
