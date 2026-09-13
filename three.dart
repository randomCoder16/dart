import 'dart:io';

void main(){
  List<int> divisors = [];
  stdout.write("Enter a number: ");
  String? numberS = stdin.readLineSync();
  
  try {
    if (numberS != null && numberS.isNotEmpty) {
      int number = int.parse(numberS);
      
      for (int x = 0; x <= number; ++x) {
        int new_divisor = number % x;
        if(new_divisor == 0) {
          divisors.add(new_divisor);
        }
      }
    }
    
  } catch (e) {
    print("An error occured!");
    exit(1);
  }
}