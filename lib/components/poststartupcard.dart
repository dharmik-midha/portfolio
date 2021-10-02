import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';

class PostStartupCards extends StatelessWidget {
  const PostStartupCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      child: Column(
        children: <Widget>[
          const Text(
            'Interested in collaborating or investing?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              fontFamily: 'Eurostile',
            ),
          ),
          spaceR,
          const Text(
            'I’m always open to discussing product design work or partnership opportunities.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 70,
          ),
          SizedBox(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Start a Conversation',
              ),
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 22.0, horizontal: 30),
                  textStyle: const TextStyle(fontSize: 22),
                  primary: primaryColor,
                  onSurface: primaryColor,
                  side: const BorderSide(
                    color: primaryColor,
                    width: 2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
