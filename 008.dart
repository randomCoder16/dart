// Generate a random number between 1 and 100. Ask the user to guess the number, then 
// tell them whether they guessed too low, too high, or exactly right.
import 'dart:io';
import 'dart:math';

void main() {
    stdout.write("Type exit to quit!");
    guessNumber();
}

void guessNumber(){
    while(true) {
        final random = Random();
        int randomNumber = random.nextInt(100);
        
        stdout.write("\nI am thinking of #?: ");
        try{
            String? input = stdin.readLineSync();
            if (input != null && input.isNotEmpty){
                if (input == "exit") {
                    break;
                } else {
                    int number = int.parse(input);
                    number == randomNumber ? print("You win i was thinking of $number!") : print("You lose I was thinking of $randomNumber!");
                }
            }

        } catch (e) {
            print("Enter an integer between 1 and 100!");
            // exit(1);
        }
    }
}
