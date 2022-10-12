import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wexo_ecommarce/const/colors/colors.dart';
import 'package:wexo_ecommarce/const/size/size.dart';
import 'package:wexo_ecommarce/models/carousel_model.dart';

import 'package:wexo_ecommarce/widgets/botton_navi_bar.dart';
import 'package:wexo_ecommarce/widgets/carousel_card.dart';
import 'package:wexo_ecommarce/widgets/categorycard.dart';

import 'package:wexo_ecommarce/widgets/home_appbar.dart';
import 'package:wexo_ecommarce/widgets/quick_access.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        .map((carousel) =>
                            HeaderCarouselCard(carousel: carousel))
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          QuickAccess(
                            labal: "Offer Zone",
                            color: const Color(0xFFE8E8E8),
                            icon: Image.asset(
                              "assets/quick_access/offers.png",
                              cacheHeight: 30,
                            ),
                          ),
                          QuickAccess(
                            labal: "Save Earth",
                            color: const Color(0xFF1CA672),
                            icon: Image.asset(
                              "assets/quick_access/save_earth.png",
                              cacheHeight: 30,
                            ),
                          ),
                          QuickAccess(
                            labal: "Attraction",
                            color: const Color(0xFFFFD277),
                            icon: Image.asset(
                                "assets/quick_access/attraction.png",
                                cacheHeight: 30),
                          ),
                          QuickAccess(
                            labal: "Express",
                            color: const Color(0xFF707070),
                            icon: Image.asset(
                              "assets/quick_access/express.png",
                              cacheHeight: 30,
                            ),
                          ),
                        ]),
                  ),
                  kHeight5,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kWhiteColor,
                    ),
                    height: MediaQuery.of(context).size.height / 2.2,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Popular Categories",
                                style: TextStyle(fontSize: 16),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                minWidth: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0)),
                                color: const Color(0xFF72618A),
                                child: const Text(
                                  "more",
                                  style: TextStyle(color: kWhiteColor),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            CategoryCard(
                              image: "assets/category/kid_mom.png",
                            ),
                            CategoryCard(
                              image: "assets/category/kid_mom.png",
                            ),
                            CategoryCard(
                              image: "assets/category/kid_mom.png",
                            ),
                          ],
                        ),
                        kHeight8,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            CategoryCard(
                              image: "assets/category/kid_mom.png",
                            ),
                            CategoryCard(
                              image: "assets/category/kid_mom.png",
                            ),
                            CategoryCard(
                              image: "assets/category/kid_mom.png",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  kHeight8,
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 2,
                      viewportFraction: 1.1,
                      autoPlay: true,
                    ),
                    items: Carousel.carousels
                        .map((carousel) =>
                            HeaderCarouselCard(carousel: carousel))
                        .toList(),
                  ),
                  kHeight8,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kWhiteColor,
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Shop Local",
                                style: TextStyle(fontSize: 18),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                minWidth: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0)),
                                color: const Color(0xFF72618A),
                                child: const Text(
                                  "more",
                                  style: TextStyle(color: kWhiteColor),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                  "Know your new shops in your neighbourhood")),
                        ),
                        kHeight8,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width / 4.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    "assets/category/kid_mom.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              kWidth20,
                              Column(
                                children: const [
                                  Text(
                                    "Thomson Casa",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "4.2",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text("Moblie, Laptops, etc"),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
