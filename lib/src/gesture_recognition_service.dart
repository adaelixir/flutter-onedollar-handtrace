import 'package:flutter/material.dart';
import 'recognizer/gesture_recognizer.dart';
import 'common/data/point.dart';
import 'ui/gesture_drawing_view.dart';

typedef GestureRecognitionCallback = void Function(String name, double score);

class GestureRecognitionService {
  final GestureDrawingView gestureDrawingView;
  final GestureRecognitionCallback callback;

  final GestureRecognizer recognizer = GestureRecognizer();
  final List<Point> points = [];
  bool isDrawing = false;
  bool isServiceActive = false;

  GestureRecognitionService(this.gestureDrawingView, this.callback);

  void activateService() {
    isServiceActive = true;
    points.clear();
  }

  void handlePanStart(DragStartDetails details) {
    if (isServiceActive) {
      isDrawing = true;
    }
  }

  void handlePanUpdate(DragUpdateDetails details) {
    if (isDrawing) {
      points.add(Point(details.localPosition.dx, details.localPosition.dy));
      gestureDrawingView.updatePoints(points);
    }
  }

  void handlePanEnd(DragEndDetails details) {
    if (isDrawing) {
      final result = recognizer.recognize(points);
      callback(result.name, result.score);
      isDrawing = false;
      points.clear();
    }
  }

  void handleScaleStart(ScaleStartDetails details) {
    if (details.pointerCount == 2) {
      activateService();
    }
  }

  Widget buildGestureDetector(BuildContext context) {
    return GestureDetector(
      onPanStart: handlePanStart,
      onPanUpdate: handlePanUpdate,
      onPanEnd: handlePanEnd,
      onScaleStart: handleScaleStart,
      child: gestureDrawingView,
    );
  }
}
