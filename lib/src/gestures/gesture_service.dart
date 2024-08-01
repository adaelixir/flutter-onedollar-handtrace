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
  final PopupView popupView;
  final BuildContext context;

  final TrajectoryRecognizer recognizer = TrajectoryRecognizer();
  final List<Point> points = [];
  bool isDrawing = false;
  bool isServiceActive = false;
  bool isLongPressing = false;

  GestureService(this.drawingView, this.callback, this.popupView, this.context);

  void activateService() {
    isServiceActive = true;
    points.clear();
  }

  void deactivateService() {
    isServiceActive = false;
    points.clear();
    drawingView.setDrawing(false); // 更新绘制状态
  }

  void handleLongPressStart(LongPressStartDetails details) {
    isLongPressing = true;
    if (isServiceActive) {
      // Deactivate service if it is already active
      deactivateService();
      SnackbarView.showSnackbar(context, "退出绘制模式");
    } else {
      // Activate service if it is not active
      activateService();
      SnackbarView.showSnackbar(context, "进入绘制模式");
    }
  }

  void handlePanStart(DragStartDetails details) {
    if (isServiceActive && !isLongPressing) {
      isDrawing = true;
      points.clear(); // 清空之前的点
      drawingView.setDrawing(true); // 更新绘制状态
    }
  }

  void handlePanUpdate(DragUpdateDetails details) {
    if (isDrawing) {
      points.add(Point(details.localPosition.dx, details.localPosition.dy));
      drawingView.updatePoints(points);
    }
  }

  void handlePanEnd(DragEndDetails details) {
    if (isDrawing) {
      if (points.isNotEmpty) {
        final result = recognizer.recognize(points);
        callback(result.name, result.score);
        popupView.showPopup(
          context,
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
      isDrawing = false;
      points.clear();
      drawingView.setDrawing(false); // 更新绘制状态
    }
  }

  Widget buildGestureDetector(BuildContext context) {
    return GestureDetector(
      onLongPressStart: handleLongPressStart,
      onPanStart: handlePanStart,
      onPanUpdate: handlePanUpdate,
      onPanEnd: handlePanEnd,
      child: drawingView,
    );
  }
}
