import 'package:flutter/material.dart';

class View1 extends StatelessWidget {
  const View1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Designer, Front-end Developer & Mentor',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 48,
              fontFamily: 'Eurostile',
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'I design and code beautifully simple things, and I love what I do.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 60,
          ),
          Image.network('https://mattfarley.ca/img/mf-avatar.svg'),
          const SizedBox(
            height: 60,
          ),
          Image.network('https://mattfarley.ca/img/hero.svg'),
        ],
      ),
    );
  }
}
