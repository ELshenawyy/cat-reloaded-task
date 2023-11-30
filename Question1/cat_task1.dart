import 'dart:io';

String reverseWordsOrder(String input) {
  List<String> words = input.split(' ');
  List<String> reversedWords = List.from(words.reversed);
  String reversedString = reversedWords.join(' ');
  return reversedString;
}

void main() {
  stdout.write("Enter a long string with multiple words: ");
  String? userInput = stdin.readLineSync();

  String reversedString = reverseWordsOrder(userInput!);
  print("String with words in reverse order: $reversedString");
}
