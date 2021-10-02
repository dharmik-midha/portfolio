import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    footerButton(var i) {
      return ElevatedButton(
        onPressed: () {},
        child: FaIcon(i, color: Colors.white, size: 16),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          side: const BorderSide(color: Colors.white),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(18),
          primary: primaryColor,
        ),
      );
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 70),
      color: primaryColor,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Image.network('https://mattfarley.ca/img/mf-logo-white.svg'),
          ),
          spaceR,
          const Text(
            'Living, learning, & leveling up\none day at a time.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              spaceW,
              footerButton(FontAwesomeIcons.twitter),
              spaceW,
              footerButton(FontAwesomeIcons.dribbble),
              spaceW,
              footerButton(FontAwesomeIcons.linkedin),
              spaceW,
              footerButton(FontAwesomeIcons.angellist),
              spaceW,
              footerButton(FontAwesomeIcons.productHunt),
              spaceW,
              footerButton(FontAwesomeIcons.envelope),
              spaceW,
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Made by Dharmik Midha',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Eurostile'),
          ),
          spaceR,
        ],
      ),
    );
  }
}
