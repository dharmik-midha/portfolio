import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';
import 'package:portfolio/components/skillscard.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          color: primaryColor,
          height: 150,
          width: double.infinity,
        ),
        Container(
          width: 1200,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              runAlignment: WrapAlignment.spaceEvenly,
              children: const <Widget>[
                SkillsCard(
                  skillUrl: 'https://mattfarley.ca/img/icons/designer.svg',
                  skillHeading: 'Designer',
                  skillBody:
                      'I value simple content structure, clean design patterns, and thoughtful interactions.',
                  skillSubHead: 'Things I enjoy designing:',
                  skillData: 'UX, UI, Web, Mobile, Apps, Logos',
                  skillUtilities: 'Design Tools:',
                  skillInfo:
                      "Balsamiq Mockups\nFigma\nInvision\nMarvel\nPen & Paper\nSketch\nWebflow\nZeplin",
                ),
                SkillsCard(
                  skillUrl: 'https://mattfarley.ca/img/icons/frontend.svg',
                  skillHeading: 'Front-end Developer',
                  skillBody:
                      'I like to code things from scratch, and enjoy bringing ideas to life in the browser.',
                  skillSubHead: 'Languages I speak:',
                  skillData: 'HTML, Pug, Slim, CSS, Sass, Less',
                  skillUtilities: 'Dev Tools:',
                  skillInfo:
                      "Atom\nBitbucket\nBootstrap\nBulma\nCodekit\nCodepen\nGithub\nGitlab\nTerminal",
                ),
                SkillsCard(
                  skillUrl: 'https://mattfarley.ca/img/icons/mentor.svg',
                  skillHeading: 'Mentor',
                  skillBody:
                      'I genuinely care about people, and love helping fellow designers work on their craft.',
                  skillSubHead: 'Experiences I draw from:',
                  skillData: 'UX/UI, Product design, Freelancing',
                  skillUtilities: 'Mentor Stats:',
                  skillInfo:
                      "5 years experience\n26 short courses\n42 bootcamps\n125+ students\n1,400+ mentor sessions\n60+ group critiques\n12,000+ comments",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
