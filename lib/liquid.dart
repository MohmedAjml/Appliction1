import 'package:flutter/material.dart';

class LiquidContiners extends StatelessWidget {
  final Color colors;
  final String images;
  final String title;
  final String buttontext;
  const LiquidContiners(
      {super.key,
      required this.colors,
      required this.images,
      required this.title,
      required this.buttontext});

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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 260),
                child: MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    buttontext,
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}