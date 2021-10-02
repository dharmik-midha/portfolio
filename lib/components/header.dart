import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      color: Colors.white,
      height: 120,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            child: Image.network('https://mattfarley.ca/img/mf-logo.svg'),
            height: 50,
          ),
          const Spacer(),
          Row(
            children: <Widget>[
              const Text(
                'MentorShip',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Say Hello',
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 22,
                      horizontal: 22,
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
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
