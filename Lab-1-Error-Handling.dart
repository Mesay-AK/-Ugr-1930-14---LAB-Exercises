import 'dart:io';

// Exercise- 1
int convertToInteger(String input) {
  return int.parse(input);
}

// Exercise- 2
double divideNumbers(double a, double b) {
  return a / b;
}

// Exercise-3
void readFileFromDisk(String filePath) {
  try {
    // Read the file
    File file = File(filePath);
    String contents = file.readAsStringSync();
    print('File content:\n$contents');
  } on FileSystemException catch (e) {
    print('Error reading file: $e');
  }
}

void main() {
  // Program to convert user input to an integer
  print('Enter a number:');
  String userInput = stdin.readLineSync()!;
  try {
    int number = convertToInteger(userInput);
    print('Converted number: $number');
  } on FormatException catch (e) {
    print('Error: Invalid input format. Please enter a valid number.');
  }

  // Program to divide two numbers
  print('\nEnter two numbers for division:');
  double x = double.parse(stdin.readLineSync()!);
  double y = double.parse(stdin.readLineSync()!);
  try {
    double result = divideNumbers(x, y);
    print('Result of division: $result');
  } on IntegerDivisionByZeroException {
    print('Error: Division by zero is not allowed.');
  }

  // Program to read a file from disk
  print('\nEnter the file path:');
  String filePath = stdin.readLineSync()!;
  readFileFromDisk(filePath);
}
