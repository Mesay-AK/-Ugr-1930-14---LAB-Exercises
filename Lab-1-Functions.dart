void main() {
  
  // Exercise-1
  
double add(double a, double b) {
  return a + b;
}

  // Exercise - 2
bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

  // Exercise - 3
String reversing(String str) {
  return str.split('').reversed.join('');
}
}