import 'package:flutter/material.dart';

class RatingStarts extends StatelessWidget {
  late final int rating;
  RatingStarts({required this.rating});
  @override
  Widget build(BuildContext context) {
    String star = '';
    for (var i = 0; i < rating; i++) {
      star += '⭐  ';
    }
    star.trim();
    return Text(
      star,
      style: TextStyle(fontSize: 18),
    );
  }
}
