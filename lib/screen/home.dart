import 'package:flutter/material.dart';
import 'package:food_app_ui_flutter/constrant.dart';
import 'package:food_app_ui_flutter/demoData.dart';

import '../compounts/imageCarouse.dart';

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
            SliverToBoxAdapter(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured Partners',
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(primary: kAccentColor),
                    child: const Text('Sell all'))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
