import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wexo_ecommarce/const/colors/colors.dart';
import 'package:wexo_ecommarce/const/size/size.dart';
import 'package:wexo_ecommarce/models/carousel_model.dart';

import 'package:wexo_ecommarce/widgets/botton_navi_bar.dart';
import 'package:wexo_ecommarce/widgets/carousel_card.dart';

import 'package:wexo_ecommarce/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: const HomeAppBar(),
        bottomNavigationBar: const CustomBottomBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2,
                    viewportFraction: 1.1,
                    autoPlay: true,
                  ),
                  items: Carousel.carousels
                      .map((carousel) => HeaderCarouselCard(carousel: carousel))
                      .toList(),
                ),
                kHeight5,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: kWhiteColor,
                  ),
                  height: MediaQuery.of(context).size.height / 8,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ));
  }
}
