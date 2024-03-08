import 'dart:math';

// Exercise - 1
class Rectangle {
  late double width;
  late double height;


  Rectangle(this.width, this.height);

 
  double calculateArea() {
    return width * height;
  }


  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

//  Exercise- 2
class Product {
  late String name;
  late double price;
  late int quantity;


  Product(this.name, this.price, this.quantity);

 
  double calculateTotalCost() {
    return price * quantity;
  }
}

// Exercise-3

abstract class Shape {
  double calculateArea();
}

// Exercise - 4
class Circle extends Shape {
  late double radius;


  Circle(this.radius);
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}


class Square extends Shape {
  late double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}


