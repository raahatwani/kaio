
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flip_carousel/flip_carousel.dart';

class Flip extends StatefulWidget {
  final List<String> cardItems;
String heroTag;
  Flip({required this.cardItems, required this.heroTag});

  @override
  State<Flip> createState() => _FlipState();
}

class _FlipState extends State<Flip> {
  @override
  Widget build(BuildContext context) {
    return FlipCarousel(
      borderRadius: BorderRadius.circular(25),
      items: widget.cardItems.map((item) => Container(child: Image.asset(item))).toList(),
      transitionDuration: const Duration(milliseconds: 400),
      isAssetImage: true,
      fit: BoxFit.contain,
      perspectiveFactor: 0.002,
      layersGap: 30,
      heroTag: widget.heroTag,
    );
  }
}