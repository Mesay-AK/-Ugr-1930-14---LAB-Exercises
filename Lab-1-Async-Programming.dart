import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Exercise - 1
Future<String> fetchRandomQuote() async {
  
  await Future.delayed(Duration(seconds: 2));
  // Return a random quote
  return "The only way to do great work is to love what you do. - Steve Jobs";
}

// Exercise-2

Future<void> downloadFile() async {
  
  String url = 'https://example.com/example.txt';
  
  String destinationPath = 'downloaded_file.txt';


  var response = await http.get(Uri.parse(url));

  
  File(destinationPath).writeAsBytesSync(response.bodyBytes);
  print('File downloaded successfully');
}

// Exercise - 3
Future<List<String>> loadDataFromDatabase() async {
  
  await Future.delayed(Duration(seconds: 3));
 
  return ['Data 1', 'Data 2', 'Data 3'];
}

// Exercise- 4
Future<void> fetchWeatherData() async {
  
  String apiUrl =
      'https://api.weatherapi.com/v1/current.json?key=YOUR_API_KEY&q=New+York';


  var response = await http.get(Uri.parse(apiUrl));


  Map<String, dynamic> weatherData = json.decode(response.body);

  String temperature = weatherData['current']['temp_c'].toString();
  String condition = weatherData['current']['condition']['text'];

  
  print('Current temperature: $temperature°C');
  print('Weather condition: $condition');
}

