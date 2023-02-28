// BAD PRACTISE

class Rectangle {
  final double width;
  final double height;

  Rectangle(this.width, this.height);
}

class Circle {
  final double radius;

  Circle(this.radius);

  double get pi => 3.1415;
}

class AreaCalculator {
  double calculate(Object shape) {
    if (shape is Rectangle) {
      return r.width + r.height;
    } else {
      final c = shape as Circle;
      return c.radius + c.radius * c.pi;
    }
  }
}

// GOOD PRACTISE

// Use it as interface

abstract class Area {
  double computeArea();
}

// Every class calculates the area by itself
class Rectangle implements Area {}

class Circle implements Area {}

class AreaCalculator {
  double calculate(Area shape) {
    return shape.computeArea();
  }
}
