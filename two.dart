import 'dart:io';

/// The existing code fails if the user provides non-numeric input,
/// an empty string, or null, causing a runtime FormatException.
/// This version adds robust error handling and proper null safety.

void main(){
  stdout.write("Enter a number: ");
  String? numberS = stdin.readLineSync();
  
  try {
    if (numberS != null && numberS.isNotEmpty) {
      int number = int.parse(numberS);
      if (number.isEven) {
        print("$number is Even!");
      } else {
        print("$number is Odd!");
      }
    } else {
      print("Operation failed!");
    }
  } catch (e) {
    // print("Invalid value entered");
    exit(1);
  }
}