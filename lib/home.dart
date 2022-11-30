import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'liquid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      const LiquidContiners(
        colors: Color.fromARGB(255, 150, 208, 255),
        images: 'assets/audience.png',
        title: 'Page 1',
      ),
      const LiquidContiners(
        colors: Color.fromARGB(255, 166, 241, 250),
        images: 'assets/audience (1).png',
        title: 'Page 2',
      ),
      const LiquidContiners(
        colors: Color.fromARGB(255, 234, 120, 120),
        images: 'assets/director.png',
        title: 'Page 3',
      ),
    ];
    return Scaffold(
        body: LiquidSwipe(
      pages: pages,
      positionSlideIcon: 0.5,
      waveType: WaveType.liquidReveal,
      enableSideReveal: true,
      fullTransitionValue: 1000,
      slideIconWidget: const Icon(Icons.arrow_left_outlined),
    ));
  }
}
