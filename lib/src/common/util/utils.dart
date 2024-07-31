/*
 * Copyright (c) 2016 Fredrik Henricsson
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software
 * and associated documentation files (the "Software"), to deal in the Software without restriction,
 * including without limitation the rights to use, copy, modify, merge, publish, distribute,
 * sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or
 * substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
 * AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
 * WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

import 'dart:math';
import '../data/point.dart';

extension DoubleArrayListExtensions on List<double> {
  double std(double avg) {
    double sum = 0.0;
    for (var d in this) {
      sum += pow(d - avg, 2.0);
    }
    return sqrt(sum / this.length);
  }
}

extension PointArrayListExtensions on List<Point> {
  List<double> toFloatArray() {
    List<double> floatArray = List.filled(this.length * 2, 0.0);
    int index = 0;
    for (var point in this) {
      floatArray[index] = point.x.toDouble();
      floatArray[++index] = point.y.toDouble();
      index++;
    }
    return floatArray;
  }
}

double distance(Point firstPoint, Point secondPoint) {
  double dx = firstPoint.x - secondPoint.x;
  double dy = firstPoint.y - secondPoint.y;
  return sqrt(pow(dx, 2.0) + pow(dy, 2.0));
}

double pathLength(List<Point> points) {
  double totalDistance = 0.0;
  for (int i = 1; i < points.length; i++) {
    totalDistance += distance(points[i - 1], points[i]);
  }
  return totalDistance;
}

Point centroid(List<Point> points) {
  double x = 0.0;
  double y = 0.0;
  for (var point in points) {
    x += point.x;
    y += point.y;
  }
  x /= points.length;
  y /= points.length;
  return Point(x, y);
}
