import 'point.dart';
import 'one_dollar_recognizer.dart';

class GestureRecognizer {
  final OneDollarRecognizer _recognizer = OneDollarRecognizer();

  RecognitionResult recognize(List<Point> points) {
    return _recognizer.recognize(points);
  }
}