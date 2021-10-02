import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';

class SkillsCard extends StatelessWidget {
  final String skillUrl;
  final String skillHeading;
  final String skillBody;
  final String skillSubHead;
  final String skillData;
  final String skillUtilities;
  final String skillInfo;

  const SkillsCard({
    Key? key,
    required this.skillUrl,
    required this.skillHeading,
    required this.skillBody,
    required this.skillSubHead,
    required this.skillData,
    required this.skillUtilities,
    required this.skillInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 397,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.network(skillUrl),
              ),
              spaceR,
              Text(
                skillHeading,
                style: const TextStyle(
                  fontFamily: 'Eurostile',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              spaceR,
              SizedBox(
                height: 100,
                child: Text(
                  skillBody,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
              ),
              spaceR,
              Text(
                skillSubHead,
                style: const TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              spaceR,
              Text(
                skillData,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              spaceR,
              spaceR,
              spaceR,
              Text(
                skillUtilities,
                style: const TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              spaceR,
              Center(
                child: Text(
                  skillInfo,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    height: 1.8,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
