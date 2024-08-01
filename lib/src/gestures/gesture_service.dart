import 'package:flutter/material.dart';
import '../recognizers/trajectory_recognizer.dart';
import '../recognizers/common/data/point.dart';
import '../views/drawing_view.dart';

typedef GestureRecognitionCallback = void Function(String name, double score);

class GestureRecognitionService {
  final DrawingView gestureDrawingView;
  final GestureRecognitionCallback callback;

  final TrajectoryRecognizer recognizer = TrajectoryRecognizer();
  final List<Point> points = [];
  bool isDrawing = false;
  bool isServiceActive = false;

  GestureRecognitionService(this.gestureDrawingView, this.callback);

  void activateService() {
    isServiceActive = true;
    points.clear();
  }

  void handleScaleStart(ScaleStartDetails details) {
    if (details.pointerCount == 1) {
      isDrawing = true;
    }
    activateService();
  }

  void handleScaleUpdate(ScaleUpdateDetails details) {
    if (isDrawing && details.pointerCount == 1) {
      points.add(Point(details.focalPoint.dx, details.focalPoint.dy));
      gestureDrawingView.updatePoints(points);
    }
  }

  void handleScaleEnd(ScaleEndDetails details) {
    if (isDrawing) {
      final result = recognizer.recognize(points);
      callback(result.name, result.score);
      isDrawing = false;
      points.clear();
    }
  }

  Widget buildGestureDetector(BuildContext context) {
    return GestureDetector(
      onScaleStart: handleScaleStart,
      onScaleUpdate: handleScaleUpdate,
      onScaleEnd: handleScaleEnd,
      child: gestureDrawingView,
    );
  }
}