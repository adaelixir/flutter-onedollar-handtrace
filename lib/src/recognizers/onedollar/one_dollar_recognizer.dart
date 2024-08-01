import 'template.dart';
import 'util/dollar_utils.dart';
import 'util/dollar_stroke_factory.dart';
import '../common/data/point.dart';

class RecognitionResult {
  final String name;
  final double score;

  RecognitionResult(this.name, this.score);
}

class OneDollarRecognizer {
  List<Template> templates = [];

  OneDollarRecognizer() {
    templates = DollarStrokeFactory().createDefaultStrokes();
  }

  void addTemplate(Template template) {
    templates.add(template);
  }

  RecognitionResult recognize(List<Point> points) {
    if (points.isEmpty) {
      return RecognitionResult("", 0.0);
    }

    var processedPoints = DollarUtils.resample(points, DollarUtils.NUMPOINTS);
    final radians = DollarUtils.indicativeAngle(points);
    processedPoints = DollarUtils.rotateBy(processedPoints, -radians);
    processedPoints =
        DollarUtils.scaleTo(processedPoints, DollarUtils.SQUARE_SIZE);
    final origin = Point(0.0, 0.0);
    processedPoints = DollarUtils.translateTo(processedPoints, origin);

    var b = double.infinity;
    var foundTemplateName = "";
    for (var template in templates) {
      final d = DollarUtils.distanceAtBestAngle(
          processedPoints,
          template,
          -DollarUtils.ANGLE_RANGE,
          DollarUtils.ANGLE_RANGE,
          DollarUtils.ANGLE_PRECISION);

      if (d < b) {
        b = d;
        foundTemplateName = template.name;
      }
    }

    return RecognitionResult(
        foundTemplateName, 1.0 - b / DollarUtils.HALF_DIAGONAL);
  }
}
