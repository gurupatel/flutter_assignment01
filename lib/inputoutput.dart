import 'dart:io';
import 'dart:math';

void main() {
  yearsToHundred();
  print("\nNow let's play a guessing game!\n");
  guessRandomNumber();
}

void yearsToHundred() {
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your age: ");
  int? age = int.tryParse(stdin.readLineSync()!);

  if (name != null && age != null) {
    int yearsLeft = 100 - age;
    print("Hello $name, you will turn 100 in $yearsLeft years.");
  } else {
    print("Invalid input. Please enter a valid age.");
  }
}

void guessRandomNumber() {
  final Random random = Random();
  final int target = random.nextInt(100) + 1;

  print("Guess the number between 1 and 100:");

  while (true) {
    stdout.write("Your guess: ");
    String? input = stdin.readLineSync();

    int? guess = int.tryParse(input ?? "");

    if (guess == null) {
      print("Please enter a valid number.");
      continue;
    }

    if (guess == target) {
      print("Congratulations! You guessed the correct number: $target");
      break;
    } else if (guess < target) {
      print("Too low! Try again.");
    } else {
      print("Too high! Try again.");
    }
  }
}
