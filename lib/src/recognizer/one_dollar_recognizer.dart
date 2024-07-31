import 'point.dart';

class RecognitionResult {
  final String name;
  final double score;

  RecognitionResult(this.name, this.score);
}

class OneDollarRecognizer {
  RecognitionResult recognize(List<Point> points) {
    // 简单的硬编码示例
    if (points.isNotEmpty) {
      return RecognitionResult("example", 1.0);
    }
    return RecognitionResult("unknown", 0.0);
  }
}