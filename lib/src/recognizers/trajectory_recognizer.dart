import '../recognizers/common/data/point.dart';
import '../recognizers/onedollar/one_dollar_recognizer.dart';

class TrajectoryRecognizer {
  final OneDollarRecognizer _recognizer = OneDollarRecognizer();

  RecognitionResult recognize(List<Point> points) {
    return _recognizer.recognize(points);
  }
}