// capture user input and perfom actions

import 'dart:io';

void main(){
  List<int> divisors = [];
  stdout.write("Enter a number: ");
  String? numberS = stdin.readLineSync();

  // int counter = 0;
  
  try {
    if (numberS != null && numberS.isNotEmpty) {
      int number = int.parse(numberS);
      
      for (int x = 1; x <= (number + 1); ++x) {
        int new_divisor = number % x;
        if(new_divisor == 0) {
          divisors.add(x);
        }
        // counter ++;
      }

      // divisors.add(number);

      print("The Divisors of ${numberS} are ${divisors}");
      // print("counter: $counter");
    }
    
  } catch (e) {
    print("An error occured! ${e}");
    exit(1);
  }
}
