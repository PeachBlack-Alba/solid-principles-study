// BAD PRACTISE

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double getArea() {
    return width * height;
  }

  void setWidth(double width) {
    this.width = width;
  }

  void setHeight(double height) {
    this.height = height;
  }
}

class Square extends Rectangle {
  Square() : super();

  void setSize(double size) {
    this.height = size;
    this.width = size;
  }
}

void main() {
  Rectangle fail = Square();
  fail.setHeight(4);
  fail.setWidth(8);

  // get area
  fail.getArea();
  // return 4*8 = 32
  // expected result 8*8 = 64
}

// GOOD PRACTISE

class FourSideShape {
  double left;
  double right;
  double top; // length of the top
  double bottom;
}

class Rectangle extends FourSidedShape {
  void setHeight(doubke height) {
    this.left = height;
    this.right = height;
  }

  void setLength(double height) {
    this.top = height;
    this.bottom = height;
  }
}

class Square extends FourSideShape {
  void setSize(double size) {
    this.top = size;
    this.left = size;
    this.bottom = size;
    this.right = size;
  }
}
