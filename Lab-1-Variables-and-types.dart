import 'dart:io';
void main(){

  // Excercise- 1


  String myName = "Mesay Abebe";
  int myAge = 30;
  String myFavoriteColor = "Grey";

  print("Name: $myName");
  print("Age: $myAge");
  print("Favorite Color: $myFavoriteColor");


  // Excercise - 2

  const int lightSpeed = 299792458;

  print("Please enter the distance in meters: ");
  String theDistanceStrg = stdin.readLineSync()!;
  int theDistance = int.parse(theDistanceStrg);

  double theTime = theDistance / lightSpeed;
  print(theTime);

  print("The time taken to travel $theDistanceStrg is: ${theTime.toStringAsFixed(5)}" );
}