import 'package:flutter/material.dart';

class LiquidContiners extends StatelessWidget {
  final Color colors;
  final String images;
  final String title;
  const LiquidContiners({
    super.key,
    required this.colors,
    required this.images,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800,
      color: colors,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                images,
                height: 300,
                width: 200,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
