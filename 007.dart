// Ask the user for a string and print out whether this string is a palindrome or not.


import 'dart:io';

void main() {
    stdout.write("Enter a word or number: ");
    String? input = stdin.readLineSync();
    
    try {
        if (input != null && input.isNotEmpty) {
           String inpuT = input.toLowerCase();
           String revInpuT = inpuT.split('').reversed.join('');

           // ternary operator from other languages like C
           input == revInpuT ? print("$inpuT is a palindrome") : print("$inpuT is not a palindrome!");
        }
    } catch (e) {
        print(e);
        exit(1);
    }
}
