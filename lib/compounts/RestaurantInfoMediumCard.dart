import 'package:flutter/material.dart';

import '../constrant.dart';

class RestaurantsInfoMediumCard extends StatelessWidget {
  const RestaurantsInfoMediumCard({
    Key? key,
    required this.title,
    required this.image,
    required this.deliveryTime,
    required this.rating,
    required this.press,
    required this.location,
  }) : super(key: key);
  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 6),
              child: Text(title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6),
            ),
            Text(location,
                maxLines: 1, style: const TextStyle(color: kBodyTextColor)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: DefaultTextStyle(
                style: const TextStyle(color: Colors.black, fontSize: 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                          vertical: defaultPadding / 8),
                      decoration: const BoxDecoration(
                          color: kActiveColor,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Text(
                        rating.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text('$deliveryTime min'),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: Color(0xff868686),
                    ),
                    const Spacer(),
                    const Text('Free Delivery'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
