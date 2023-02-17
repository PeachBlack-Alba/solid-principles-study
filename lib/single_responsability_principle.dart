import 'dart:ui';

/// BAD PRACTICE

class Shapes {
  // calculations
  double calculateArea(double l) {}

  // Paint to the screen
  void paint(Canvas c) {}

  //GET requests
  String wikiArticle(String figure) {}
}

/// GOOD EXAMPLE

// Calculations and logic
abstract class Shape {
  late final ShapeAreaCalculator calculator;
  late final ShapePainter shapePainter;
  late final ShapesOnline shapeOnline;

  double getArea() {
    return calculator.calculateArea();
  }

  void paint() {
    return shapePainter.paint();
  }

  void request() {
    return shapeOnline.request();
  }
}

// UI painting
class ShapeAreaCalculator {
  double calculateArea() {
    return 0;
  }
}

// UI painting
class ShapePainter {
  void paint() {
    // do something
  }
}

// GET request
class ShapesOnline {
  void request() {
    // do something
  }
}
