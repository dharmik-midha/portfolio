import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 50),
      color: primaryColor,
      child: Column(
        children: const <Widget>[
          Text(
            'Hi, I’m Matt. Nice to meet you.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Eurostile',
            ),
          ),
          spaceR,
          SizedBox(
            width: double.infinity,
            child: Center(
              child: SizedBox(
                width: 950,
                child: Text(
                  "Since beginning my journey as a freelance designer nearly 10 years ago, I've done remote work for agencies, consulted for startups, and collaborated with talented people to create digital products for both business and consumer use. I'm quietly confident, naturally curious, and perpetually working on improving my chops one design problem at a time.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
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
