import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';

class PreFooter extends StatelessWidget {
  const PreFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              color: Colors.white,
              height: 70,
              width: double.infinity,
            ),
            Container(
              color: primaryColor,
              height: 130,
              width: double.infinity,
            ),
          ],
        ),
        SizedBox(
          height: 200,
          width: 1200,
          child: Card(
            color: footerCardColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0)),
            child: Wrap(
              runAlignment: WrapAlignment.spaceEvenly,
              alignment: WrapAlignment.spaceEvenly,
              children: [
                const Text(
                  'Start a project',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Interested in working together? We should\nqueue up a chat. I’ll buy the coffee.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Let's do this",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 35),
                      primary: primaryColor,
                      onSurface: primaryColor,
                      side: const BorderSide(color: primaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
