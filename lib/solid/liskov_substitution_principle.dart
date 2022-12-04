//# Liskov substitution principle
// Every subclass/derived class should be substitutable
// for their base/parent class


void main() {
  // here if we replace rectangle with square then the output should be same
  final rectangle = Rectangle();
  rectangle.setHeight(10);
  rectangle.setWidth(20);
  print(rectangle._width);
}

abstract class Shape {
  num? width;
  num? height;

  setWidth(num value);

  setHeight(num value);
}

class Rectangle extends Shape {
  num? _width;
  num? _height;

  get height => _height;

  get width => _width;

  @override
  setWidth(num value) => _width = value;

  @override
  setHeight(num value) => _height = value;
}

class Square extends Rectangle {
  num? length;
}
