import 'package:flutter/material.dart';
import '../recognizers/common/data/point.dart';

class DrawingView extends StatefulWidget {
  final GlobalKey<_DrawingViewState> key = GlobalKey<_DrawingViewState>();

  @override
  _DrawingViewState createState() => _DrawingViewState();

  // 修改 setDrawing 方法
  void setDrawing(bool drawing) {
    key.currentState?.setDrawing(drawing);
  }

  // 修改 updatePoints 方法
  void updatePoints(List<Point> newPoints) {
    key.currentState?.updatePoints(newPoints);
  }
}

class _DrawingViewState extends State<DrawingView> {
  List<Point> points = [];
  bool isDrawing = false;

  void updatePoints(List<Point> newPoints) {
    setState(() {
      points = newPoints;
    });
  }

  void setDrawing(bool drawing) {
    setState(() {
      isDrawing = drawing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: _DrawingPainter(points),
        ),
        if (isDrawing)
          Center(
            child: Text(
              '绘制中',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
      ],
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
      ..strokeWidth = 4.0
      ..strokeCap = StrokeCap.round;

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
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
