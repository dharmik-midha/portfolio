import 'package:flutter/material.dart';

class WorkCard extends StatelessWidget {
  const WorkCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    workCard(String i) {
      return Container(
        height: 260,
        width: 380,
        margin: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          image: DecorationImage(
            image: NetworkImage(i),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return SizedBox(
      width: 1300,
      child: Wrap(
        children: <Widget>[
          workCard('https://mattfarley.ca/img/projects/wfdesignbuild.png'),
          workCard('https://mattfarley.ca/img/projects/awg2020.png'),
          workCard('https://mattfarley.ca/img/projects/chronicled.png'),
          workCard('https://mattfarley.ca/img/projects/glcsolutions.png'),
          workCard('https://mattfarley.ca/img/projects/coupal.png'),
          workCard('https://mattfarley.ca/img/projects/wedlerengineering.png'),
        ],
      ),
    );
  }
}
