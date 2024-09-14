import 'dart:io';
import 'dart:convert';

void main() {
  // 1. String Manipulation
  String inputString = "Hello, Dart!";

  // String concatenation
  String concatenated = inputString + " Welcome to string manipulation.";
  print("Concatenated String: $concatenated");

  // String interpolation
  String interpolated = "The length of the input string is: ${inputString.length}";
  print("Interpolated String: $interpolated");

  // Substring extraction
  String substring = inputString.substring(0, 5); // Extract "Hello"
  print("Substring: $substring");

  // Case conversion (upper/lower)
  print("Uppercase: ${inputString.toUpperCase()}");
  print("Lowercase: ${inputString.toLowerCase()}");

  // Reverse the string
  String reversed = inputString.split('').reversed.join('');
  print("Reversed String: $reversed");

  // String length
  int length = inputString.length;
  print("String Length: $length");

  // 2. Collections (Lists, Sets, Maps)

  // List example
  List<String> fruits = ["Apple", "Banana", "Orange"];
  fruits.add("Mango");
  print("Fruits List: $fruits");
  fruits.remove("Banana");
  print("After Removing Banana: $fruits");

  // Iterating over the list
  print("Iterating over List:");
  for (var fruit in fruits) {
    print(fruit);
  }

  // Set example
  Set<String> uniqueFruits = {"Apple", "Banana", "Orange", "Apple"};
  uniqueFruits.add("Pineapple");
  print("Unique Fruits Set: $uniqueFruits");

  // Map example
  Map<String, int> fruitPrices = {
    "Apple": 2,
    "Banana": 1,
    "Orange": 3
  };
  fruitPrices["Mango"] = 5;
  print("Fruit Prices Map: $fruitPrices");

  // Iterating over Map
  print("Iterating over Map:");
  fruitPrices.forEach((key, value) {
    print("$key: \$${value}");
  });

  // 3. File Handling

  // Write data to a file
  try {
    File('output.txt').writeAsStringSync('This is a test file.\n');
    print("Data written to output.txt");
  } catch (e) {
    print("Error writing to file: $e");
  }

  // Read data from a file
  try {
    String fileContent = File('output.txt').readAsStringSync();
    print("File content: \n$fileContent");
  } catch (e) {
    print("Error reading from file: $e");
  }

  // 4. Date and Time
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Formatting the date
  String formattedDate = "${now.day}-${now.month}-${now.year}";
  print("Formatted Date: $formattedDate");

  // Parsing a date
  DateTime parsedDate = DateTime.parse("2024-09-13");
  print("Parsed Date: $parsedDate");

  // Add/Subtract days
  DateTime futureDate = now.add(Duration(days: 5));
  DateTime pastDate = now.subtract(Duration(days: 10));
  print("Date after 5 days: $futureDate");
  print("Date 10 days ago: $pastDate");

  // Calculate the difference between two dates
  Duration difference = now.difference(parsedDate);
  print("Difference between now and parsed date: ${difference.inDays} days");

  // Final Exercise: Combine everything
  
  // Ask user for input
  print("Enter a string to manipulate:");
  String? userInput = stdin.readLineSync();

  if (userInput != null && userInput.isNotEmpty) {
    // Perform string manipulation
    String userReversed = userInput.split('').reversed.join('');
    int userLength = userInput.length;
    print("Reversed User Input: $userReversed");
    print("User Input Length: $userLength");

    // Store results in a list
    List<String> results = ["Original: $userInput", "Reversed: $userReversed", "Length: $userLength"];

    // Log the time of entry
    DateTime entryTime = DateTime.now();
    String logEntry = "Entry made at $entryTime: ${results.join(', ')}";

    // Save data to a file
    try {
      File('user_log.txt').writeAsStringSync(logEntry + "\n", mode: FileMode.append);
      print("Data saved to user_log.txt");
    } catch (e) {
      print("Error writing to log file: $e");
    }

    // Print the log entry
    print("Log Entry: $logEntry");
  } else {
    print("No input provided.");
  }
}
