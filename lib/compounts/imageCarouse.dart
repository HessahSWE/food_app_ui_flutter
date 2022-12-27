import 'package:flutter/material.dart';

import '../constrant.dart';
import '../demoData.dart';

class ImageCarouse extends StatefulWidget {
  const ImageCarouse({
    super.key,
  });

  @override
  State<ImageCarouse> createState() => _ImageCarouseState();
}

class _ImageCarouseState extends State<ImageCarouse> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.45,
      child: Stack(
        children: [
          Container(
            // width: 550,
            // height: 400,
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: PageView.builder(
              itemCount: demoBigImages.length,
              onPageChanged: ((value) {
                setState(() {
                  _currentPage = value;
                });
              }),
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(32)),
                child: Image.asset(
                  demoBigImages[index],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: defaultPadding,
            right: defaultPadding,
            child: Row(
              children: List.generate(
                demoBigImages.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: defaultPadding / 4),
                  child: IndicatorDot(
                    isActive: index == _currentPage,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 12,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white38,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
