

//Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.

import 'dart:io';

void main(){
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  
  stdout.write("Enter your age: ");
  String? age = stdin.readLineSync();
  
  print(yearsToLive(name: name, age: age));
  
}

String yearsToLive({String? name, String? age}) {
  int years = 100;
  bool isName = name != null && name.isNotEmpty;
  bool isAge = age != null && age.isNotEmpty;
  
  
  if (isName && isAge){
    int realAge = int.parse(age);
    return "Hello $name, you have ${years - realAge} years left to turn 100!\n";
  } else {
    return "No value entered!\n";
  }
}