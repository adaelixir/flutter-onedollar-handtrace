import 'package:flutter/material.dart';
import '../views/drawing_view.dart';
import '../views/popup_view.dart';
import '../views/snack_view.dart';
import '../recognizers/trajectory_recognizer.dart';
import '../recognizers/common/data/point.dart';

typedef GestureRecognitionCallback = void Function(String name, double score);
typedef CustomSnackbarBuilder = void Function(
    BuildContext context, String message);
typedef CustomPopupBuilder = void Function(
    BuildContext context, String name, double score);

class GestureService {
  final DrawingView drawingView;
  final GestureRecognitionCallback callback;
  final CustomSnackbarBuilder snackbarBuilder;
  final CustomPopupBuilder popupBuilder;
  final BuildContext context;

  final TrajectoryRecognizer recognizer = TrajectoryRecognizer();
  final List<Point> points = [];
  bool isDrawing = false;
  bool isServiceActive = false;
  bool isScaling = false;

  GestureService({
    required this.context,
    required this.callback,
    required this.drawingView,
    this.popupBuilder = PopupView.showPopup,
    this.snackbarBuilder = SnackbarView.showSnackbar,
  });

  void activateService() {
    isServiceActive = true;
    points.clear();
  }

  void handleScaleStart(ScaleStartDetails details) {
    if (details.pointerCount == 2) {
      isScaling = true;
      isDrawing = false;
      isServiceActive = false;
      snackbarBuilder(context, "请使用单指圈选区域");
    } else if (details.pointerCount == 1 && !isScaling) {
      isDrawing = true;
      activateService();
      drawingView.setDrawing(true); // 更新绘制状态
    }
  }

  void handleScaleUpdate(ScaleUpdateDetails details) {
    if (isScaling && details.pointerCount == 2) {
      // 处理放缩逻辑
    } else if (isDrawing && details.pointerCount == 1) {
      points.add(Point(details.focalPoint.dx, details.focalPoint.dy));
      drawingView.updatePoints(points);
    }
  }

  void handleScaleEnd(ScaleEndDetails details) {
    if (isScaling) {
      isScaling = false;
    } else if (isDrawing) {
      if (points.isNotEmpty) {
        final result = recognizer.recognize(points);
        callback(result.name, result.score);
        if (result.name.isNotEmpty && !result.score.isInfinite) {
          popupBuilder(context, result.name, result.score);
        }
      }
      isDrawing = false;
      points.clear();
      drawingView.setDrawing(false); // 更新绘制状态
    }
  }

  Widget buildGestureDetector(BuildContext context) {
    return GestureDetector(
      onScaleStart: handleScaleStart,
      onScaleUpdate: handleScaleUpdate,
      onScaleEnd: handleScaleEnd,
      child: drawingView,
    );
  }
}
