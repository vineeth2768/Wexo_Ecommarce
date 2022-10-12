import 'package:flutter/material.dart';
import 'package:wexo_ecommarce/models/carousel_model.dart';

class HeaderCarouselCard extends StatelessWidget {
  const HeaderCarouselCard({super.key, required this.carousel});
  final Carousel carousel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.network(
            carousel.imageUrl,
            fit: BoxFit.cover,
          )),
    );
  }
}
