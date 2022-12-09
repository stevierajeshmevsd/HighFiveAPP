import 'package:flutter/cupertino.dart';

class Flashcard {
  final String question;
  final Image image;
  bool isread;
  Flashcard(
      {required this.question, required this.image, required this.isread});
}

List<Flashcard> questionImg = [
  Flashcard(
      question: "This is an example question 1",
      image: Image.asset('images/placeholderapp.png'),
      isread: false)
];
