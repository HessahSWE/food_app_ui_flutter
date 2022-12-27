import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:food_app_ui_flutter/constrant.dart';
import 'package:food_app_ui_flutter/demoData.dart';
import '../compounts/RestaurantInfoMediumCard.dart';
import '../compounts/imageCarouse.dart';
import '../compounts/sectionTitle.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Center(
                child: Column(
                  children: [
                    Text(
                      "Delivery to".toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: kActiveColor),
                    ), // Text
                    const Text(
                      "San Francisco",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Filter",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              sliver: SliverToBoxAdapter(
                child: ImageCarouse(),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: SectionTitle(title: 'Featured Partners', press: () {}),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      demoMediumCardData.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: RestaurantsInfoMediumCard(
                          deliveryTime: demoMediumCardData[index]
                              ['deliveryTime'],
                          image: demoMediumCardData[index]['image'],
                          location: demoMediumCardData[index]['location'],
                          press: () {},
                          rating: demoMediumCardData[index]['rating'],
                          title: demoMediumCardData[index]['name'],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
