import 'dart:io';

main(){
  
  // Excercise 1

    
  print("Enter a number:");
  int theNumber = int.parse(stdin.readLineSync()!);

  if (theNumber % 2 == 0) {
    print("$theNumber is even.");
  } else {
    print("$theNumber is odd.");
  }


  // Excercise 2

  for (int n = 1; n <= 10; n++) {
    print(n);


  // Excercise 3
    
  print("Enter the operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  
  print("Enter the first operand:");
  double first = double.parse(stdin.readLineSync()!);
  print("Enter the second operand:");
  double second = double.parse(stdin.readLineSync()!);

  double result = 0;


  switch (operation) {
    case '+':
      result = first + second;
      break;
    case '-':
      result = first - second;
      break;
    case '*':
      result = first * second;
      break;
    case '/':
      if (second != 0) {
        result = first / second;
      } else {
        print("Error: Division by zero!");
        return;
      }
      break;
    default:
      print("Error: Invalid operation!");
      return;
  }

 
  print("Result: $result");


  // Excercise 4


  print("Enter the grade (0-100):");
  int grade = int.parse(stdin.readLineSync()!);


  String letter;
  switch (grade ~/ 10) {
    case 10:
    case 9:
      letter = 'A';
      break;
    case 8:
      letter = 'B';
      break;
    case 7:
      letter = 'C';
      break;
    case 6:
      letter = 'D';
      break;
    default:
      letter = 'F';
  }


  print("Letter grade: $letter");
  
}
}