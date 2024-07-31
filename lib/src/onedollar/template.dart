import '../common/data/point.dart';
import 'util/dollar_utils.dart';

class Template {
  final String name;
  List<Point> processedPoints;

  Template(this.name, List<Point> points)
      : processedPoints = List.from(points) {
    processedPoints = DollarUtils.resample(points, DollarUtils.NUMPOINTS);
    final radians = DollarUtils.indicativeAngle(processedPoints);
    processedPoints = DollarUtils.rotateBy(processedPoints, radians);
    processedPoints =
        DollarUtils.scaleTo(processedPoints, DollarUtils.SQUARE_SIZE);
    final origin = Point(0.0, 0.0);
    processedPoints = DollarUtils.translateTo(processedPoints, origin);
    // Use Protractor?
    /*
    this.Vector = Vectorize(this.Points); // for Protractor*/
  }
}
