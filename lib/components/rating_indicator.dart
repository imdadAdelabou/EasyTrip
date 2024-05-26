import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingIndicator extends StatelessWidget {
  const RatingIndicator({
    required this.rating,
    this.size = 40.0,
    super.key,
  });

  final double rating;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemBuilder: (context, index) => const Icon(
        FontAwesomeIcons.star,
        color: Colors.amber,
      ),
      itemSize: size,
      itemPadding: const EdgeInsets.only(right: 4.0),
    );
  }
}
