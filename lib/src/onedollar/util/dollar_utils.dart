import 'dart:math';
import '../../common/data/point.dart';
import '../../common/data/rectangle.dart';
import '../../common/util/utils.dart';
import '../template.dart';

class DollarUtils {
  static const int NUMPOINTS = 64;
  static const double SQUARE_SIZE = 250.0;
  static const double ANGLE_RANGE = 45.0;
  static const double ANGLE_PRECISION = 2.0;
  static final double HALF_DIAGONAL =
      0.5 * sqrt(SQUARE_SIZE * SQUARE_SIZE + SQUARE_SIZE * SQUARE_SIZE);
  static final double PHI = 0.5 * (-1.0 + sqrt(5.0)); // Golden Ratio

  static List<Point> resample(List<Point> points, int numPoints) {
    double I = pathLength(points) / (numPoints - 1);
    double D = 0.0;
    List<Point> newPoints = [];
    List<Point> stack = List.from(points.reversed);

    while (stack.isNotEmpty) {
      Point pt1 = stack.removeLast();

      if (stack.isEmpty) {
        newPoints.add(pt1);
        continue;
      }
      Point pt2 = stack.last;
      double d = distance(pt1, pt2);
      if ((D + d) >= I) {
        double qx = pt1.x + ((I - D) / d) * (pt2.x - pt1.x);
        double qy = pt1.y + ((I - D) / d) * (pt2.y - pt1.y);
        Point q = Point(qx, qy);
        newPoints.add(q);
        stack.add(q);
        D = 0.0;
      } else {
        D += d;
      }
    }

    // Sometimes we fall a rounding-error short of adding the last point, so add it if so
    if (newPoints.length == (numPoints - 1)) {
      newPoints.add(points.last);
    }
    return newPoints;
  }

  static double indicativeAngle(List<Point> points) {
    Point c = centroid(points);
    return atan2((c.y - points[0].y), (c.x - points[0].x));
  }

  // rotates points around centroid
  static List<Point> rotateBy(List<Point> points, double radians) {
    Point c = centroid(points);
    double cosValue = cos(radians);
    double sinValue = sin(radians);

    List<Point> newPoints = [];
    for (Point point in points) {
      double qx = (point.x - c.x) * cosValue - (point.y - c.y) * sinValue + c.x;
      double qy = (point.x - c.x) * sinValue + (point.y - c.y) * cosValue + c.y;
      newPoints.add(Point(qx, qy));
    }

    return newPoints;
  }

  // non-uniform scale; assumes 2D gestures (i.e., no lines)
  static List<Point> scaleTo(List<Point> points, double size) {
    Rectangle B = boundingBox(points);
    List<Point> newPoints = [];
    for (Point point in points) {
      double qx = point.x * (size / B.width);
      double qy = point.y * (size / B.height);
      newPoints.add(Point(qx, qy));
    }

    return newPoints;
  }

  static Rectangle boundingBox(List<Point> points) {
    double minX = double.infinity;
    double maxX = double.negativeInfinity;
    double minY = double.infinity;
    double maxY = double.negativeInfinity;

    for (int i = 0; i < points.length; i++) {
      if (i == 0) continue;
      Point point = points[i];
      minX = min(point.x, minX);
      maxX = max(point.x, maxX);
      minY = min(point.y, minY);
      maxY = max(point.y, maxY);
    }

    return Rectangle(minX, minY, maxX - minX, maxY - minY);
  }

  // translates points' centroid
  static List<Point> translateTo(List<Point> points, Point origin) {
    Point c = centroid(points);
    List<Point> newPoints = [];
    for (Point point in points) {
      double qx = point.x + origin.x - c.x;
      double qy = point.y + origin.y - c.y;
      newPoints.add(Point(qx, qy));
    }

    return newPoints;
  }

  static double distanceAtBestAngle(List<Point> points, Template template,
      double a, double b, double threshold) {
    double x1 = PHI * a + (1.0 - PHI) * b;
    double f1 = distanceAtAngle(points, template, x1);
    double x2 = (1.0 - PHI) * a + PHI * b;
    double f2 = distanceAtAngle(points, template, x2);
    double bb = b;
    double aa = a;
    while ((bb - aa).abs() > threshold) {
      if (f1 < f2) {
        bb = x2;
        x2 = x1;
        f2 = f1;
        x1 = PHI * aa + (1.0 - PHI) * bb;
        f1 = distanceAtAngle(points, template, x1);
      } else {
        aa = x1;
        x1 = x2;
        f1 = f2;
        x2 = (1.0 - PHI) * aa + PHI * bb;
        f2 = distanceAtAngle(points, template, x2);
      }
    }
    return min(f1, f2);
  }

  static double distanceAtAngle(
      List<Point> points, Template template, double radians) {
    List<Point> newPoints = rotateBy(points, radians);
    return pathDistance(newPoints, template.processedPoints);
  }

  static double pathDistance(List<Point> points1, List<Point> points2) {
    if (points1.length != points2.length) {
      print("Lengths differ. ${points1.length} != ${points2.length}");
      return double.infinity;
    }
    double d = 0.0;
    for (int i = 0; i < points1.length; i++) {
      d += distance(points1[i], points2[i]);
    }
    return d / points1.length;
  }
}
