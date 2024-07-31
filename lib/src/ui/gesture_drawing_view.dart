import 'package:flutter/material.dart';
import 'package:flutter_onedollar_handtrace/src/recognizer/point.dart';

class GestureDrawingView extends StatefulWidget {
  @override
  _GestureDrawingViewState createState() => _GestureDrawingViewState();

  // 添加这个方法声明
  void updatePoints(List<Point> points) {
    _GestureDrawingViewState? state = _gestureDrawingViewKey.currentState;
    state?.updatePoints(points);
  }

  final GlobalKey<_GestureDrawingViewState> _gestureDrawingViewKey = GlobalKey<_GestureDrawingViewState>();
}

class _GestureDrawingViewState extends State<GestureDrawingView> {
  final List<Point> _points = [];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          _points.add(Point(details.localPosition.dx, details.localPosition.dy));
        });
      },
      onPanEnd: (details) {
        // Handle gesture end
      },
      child: CustomPaint(
        painter: _GesturePainter(_points),
        size: Size.infinite,
      ),
    );
  }

  // 添加这个方法实现
  void updatePoints(List<Point> points) {
    setState(() {
      _points.clear();
      _points.addAll(points);
    });
  }
}

class _GesturePainter extends CustomPainter {
  final List<Point> points;

  _GesturePainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 10.0;

    for (int i = 1; i < points.length; i++) {
      final p1 = points[i - 1];
      final p2 = points[i];
      canvas.drawLine(Offset(p1.x, p1.y), Offset(p2.x, p2.y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}