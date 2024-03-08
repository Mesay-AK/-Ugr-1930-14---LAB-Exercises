import 'dart:io';

// Excercise- 1

class Person {
  late String name;
  late int age;
  late String address;

  
  Person(this.name, this.age, this.address);

  
  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }


  void updateAddress(String newAddress) {
    address = newAddress;
  }
}

// Exercise- 2


class Student extends Person {
  late int rollNumber;
  late List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}

  // Exercise- 3
void main() {
 
  Person person1 = Person('Melkam', 20, 'Dundem');

  
  print('Information about person:');
  person1.displayInfo();

  print('\nEnter new address:');
  String newAddress = stdin.readLineSync()!;
  person1.updateAddress(newAddress);
  print('Updated address:');
  person1.displayInfo();

  print('\nEnter student details:');
  print('Name:');
  String studentName = stdin.readLineSync()!;
  print('Age:');
  int studentAge = int.parse(stdin.readLineSync()!);
  print('Address:');
  String studentAddress = stdin.readLineSync()!;
  print('Roll Number:');
  int rollNumber = int.parse(stdin.readLineSync()!);
  print('Enter marks separated by space:');
  List<int> marks = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  Student student1 =
      Student(studentName, studentAge, studentAddress, rollNumber, marks);

  print('\nInformation about student:');
  student1.displayInfo();

  int totalMarks = student1.calculateTotalMarks();
  print('Total marks: $totalMarks');

 
  double averageMarks = student1.calculateAverageMarks();
  print('Average marks: $averageMarks');
}
