import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app_ui_flutter/constrant.dart';
import 'package:food_app_ui_flutter/demoData.dart';

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
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 1.25,
                            child: Image.asset("assets/images/big_2.jpg"),
                          ),
                          Text(demoMediumCardData[0]['name'],
                              style: Theme.of(context).textTheme.headline6),
                          Text(demoMediumCardData[0]['location'],
                              style: const TextStyle(color: kBodyTextColor)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
