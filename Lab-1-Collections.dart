import 'dart:math';

// Exercise-1
class Student {
  late String name;
  late List<int> marks;

 
  Student(this.name, this.marks);

 
  double calculateAverageMark() {
    if (marks.isEmpty) return 0;
    int totalMarks = marks.reduce((value, element) => value + element);
    return totalMarks / marks.length;
  }
}

void main() {
  
  List<String> hobbies = ['Reading', 'Cooking', 'Gardening', 'Painting'];
  print('My favorite hobbies: $hobbies');


  hobbies.add('Cycling');
  hobbies.remove('Gardening'); 
  hobbies.sort(); 
  bool isEmpty = hobbies.isEmpty; 
  print('Updated hobbies list: $hobbies');
  print('Is hobbies list empty? $isEmpty');

  // Exercise-2

  List<int> randomNumbers = List.generate(10, (_) => Random().nextInt(10));
  print('\nRandom numbers: $randomNumbers');
  Set<int> uniqueNumbers = randomNumbers.toSet();
  print('Unique numbers: $uniqueNumbers');

  // Exercise -3
  Map<String, int> studentMarks = {};
  studentMarks.putIfAbsent('Meri', () => 85); 
  studentMarks.putIfAbsent('Belay', () => 90);
  studentMarks.putIfAbsent('Haile', () => 75);
  print('\nStudent marks: $studentMarks');

 
  print('Iterating over student marks:');
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });

 
  String searchName = 'Mariam>';
  bool isStudentPresent = studentMarks.containsKey(searchName);
  print('\nIs $searchName present in student marks? $isStudentPresent');

// Exercise - 4
  Map<String, int> shoppingCart = {};
  shoppingCart['Apple'] = 2; 
  shoppingCart['Banana'] = 3;
  shoppingCart['Orange'] = 1;
  print('\nShopping cart contents: $shoppingCart');

  
  double totalPrice = 0;
  shoppingCart.forEach((product, quantity) {
    totalPrice += quantity * getProductPrice(product);
  });
  print('Total price: \$${totalPrice.toStringAsFixed(2)}');

 
  String removeItem = 'Banana';
  if (shoppingCart.containsKey(removeItem)) {
    shoppingCart.remove(removeItem);
    print('$removeItem removed from the cart.');
  } else {
    print('$removeItem is not in the cart.');
  }

//  Exercise - 5
  List<Student> students = [
    Student('Ali', [80, 85, 90]),
    Student('Belay', [75, 85, 80]),
    Student('Ketem', [90, 95, 85]),
  ];
  print('\nStudents and their average marks:');
  students.forEach((student) {
    double averageMark = student.calculateAverageMark();
    print('${student.name}: $averageMark');
  });
}
