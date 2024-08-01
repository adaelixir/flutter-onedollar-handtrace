import 'package:flutter/material.dart';
import '../recognizers/trajectory_recognizer.dart';
import '../recognizers/common/data/point.dart';
import '../views/drawing_view.dart';
import '../views/snack_view.dart';
import '../views/popup_view.dart';

typedef GestureRecognitionCallback = void Function(String name, double score);

class GestureService {
  final DrawingView drawingView;
  final GestureRecognitionCallback callback;
  final SnackbarView snackbarView;
  final PopupView popupView;
  final BuildContext context;

  final TrajectoryRecognizer recognizer = TrajectoryRecognizer();
  final List<Point> points = [];
  bool isDrawing = false;
  bool isServiceActive = false;
  bool isScaling = false;

  GestureService(this.drawingView, this.callback, this.snackbarView,
      this.popupView, this.context);

  void activateService() {
    isServiceActive = true;
    points.clear();
  }

  void handleScaleStart(ScaleStartDetails details) {
    if (details.pointerCount == 2) {
      isScaling = true;
      isDrawing = false;
      isServiceActive = false;

      SnackbarView.showSnackbar(context, "请使用单指圈选区域");
    } else if (details.pointerCount == 1 && !isScaling) {
      isDrawing = true;
      activateService();
      drawingView.setDrawing(true); // 更新绘制状态
    }
  }

  void handleScaleUpdate(ScaleUpdateDetails details) {
    if (isScaling && details.pointerCount == 2) {
      //处理放缩逻辑
    } else if (isDrawing && details.pointerCount == 1) {
      points.add(Point(details.focalPoint.dx, details.focalPoint.dy));
      drawingView.updatePoints(points);
    }
  }

  void handleScaleEnd(ScaleEndDetails details) {
    if (isScaling && details.pointerCount == 2) {
      isScaling = false;
    } else if (isDrawing) {
      final result = recognizer.recognize(points);
      callback(result.name, result.score);
      isDrawing = false;
      isScaling = false;
      points.clear();
      drawingView.setDrawing(false); // 更新绘制状态
      PopupView(context).showPopup(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '轨迹名称: ${result.name}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
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
