
import 'package:flutter/material.dart';
import 'package:flip_carousel/flip_carousel.dart';

class Flip extends StatefulWidget {
  final List<String> cardItems;

  Flip({required this.cardItems});

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
      // border: Border.all(width: 1, color: const Color(0xFFFFFFFF)),
      fit: BoxFit.contain,
      perspectiveFactor: 0.002,
      layersGap: 30,
      
    );
  }
}