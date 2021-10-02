import 'package:flutter/material.dart';

class Collabs extends StatelessWidget {
  const Collabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    collabsImg(String x) {
      return Container(
        margin: const EdgeInsets.all(10),
        child: SizedBox(
          width: 250,
          child: Image.network(x),
        ),
      );
    }

    return Container(
      width: 1500,
      margin: const EdgeInsets.symmetric(vertical: 70),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 70),
            child: const SizedBox(
              width: 600,
              child: Text(
                "I'm proud to have collaborated with some awesome companies:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Eurostile',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 100),
            child: Wrap(
              children: [
                collabsImg('https://mattfarley.ca/img/logos/briteweb.svg'),
                collabsImg('https://mattfarley.ca/img/logos/goodkind.svg'),
                collabsImg('https://mattfarley.ca/img/logos/redstamp.svg'),
                collabsImg('https://mattfarley.ca/img/logos/domain7.svg'),
                collabsImg('https://mattfarley.ca/img/logos/designlab.png'),
                collabsImg('https://mattfarley.ca/img/logos/chronicled.svg'),
                collabsImg('https://mattfarley.ca/img/logos/bldrs.png'),
                collabsImg('https://mattfarley.ca/img/logos/serpmetrics.svg'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
