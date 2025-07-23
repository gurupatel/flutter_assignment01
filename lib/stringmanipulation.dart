import 'dart:io';

void main() {
  printQuotes();

  printName("Gaurang");

  String str = "  Dart Programming  ";
  print("Original: '$str'");
  print("No spaces: '${removeWhitespace(str)}'");

  String numberStr = "12345";
  print("Converted int: ${convertStringToInt(numberStr)}");

  String word = "Flutter";
  print("Reversed: ${reverseString(word)}");
}

void printQuotes() {
  print("This is a string with double quotes.");
  print('This is a string with single quotes.');
}

void printName(String name) {
  print("Your name is: $name");
}

String removeWhitespace(String input) {
  return input.replaceAll(' ', ''); // remove spaces only
  // OR to remove all whitespace characters (space, tab, newline):
}

int? convertStringToInt(String input) {
  return int.tryParse(input); // returns null if input is not valid integer
}

String reverseString(String input) {
  return input.split('').reversed.join();
}
