import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';
import 'package:portfolio/components/workcard.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 130),
      child: Column(
        children: <Widget>[
          const Text(
            'My Recent Work',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontFamily: 'Eurostile',
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          spaceR,
          const Text(
            'Here are a few design projects I\'ve worked on recently. Want to see more? Email me.',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 70,
          ),
          const WorkCard(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 70),
            child: SizedBox(
              width: 250,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.tonality),
                    Spacer(),
                    Text(
                      'See more on Dribble',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 25,
                  ),
                  primary: primaryColor,
                  side: const BorderSide(
                    color: primaryColor,
                    width: 2.5,
                  ),
                  textStyle: const TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
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
