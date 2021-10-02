import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';
import 'package:portfolio/components/testimonialcards.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      children: const <Widget>[
        SizedBox(height: 70),
        Text('Testimonials',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Eurostile',
              fontSize: 32,
            )),
        spaceR,
        Text(
          "People I've worked with have said some nice things...",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        TestimonialCards(),
      ],
    ));
  }
}
