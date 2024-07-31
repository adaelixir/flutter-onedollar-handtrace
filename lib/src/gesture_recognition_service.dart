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
  int startTime = 0;

  GestureRecognitionService(this.gestureDrawingView, this.callback);

  bool handleTouchEvent(BuildContext context, PointerEvent event) {
    if (event is PointerDownEvent) {
      startTime = DateTime.now().millisecondsSinceEpoch;
    } else if (event is PointerMoveEvent) {
      if (isDrawing) {
        points.add(Point(event.localPosition.dx, event.localPosition.dy));
        gestureDrawingView.updatePoints(points);
      }
    } else if (event is PointerUpEvent) {
      if (isDrawing) {
        final result = recognizer.recognize(points);
        callback(result.name, result.score);
        isDrawing = false;
        points.clear();
      } else if (DateTime.now().millisecondsSinceEpoch - startTime > 500) {
        isDrawing = true;
      }
    }
    return true;
  }
}