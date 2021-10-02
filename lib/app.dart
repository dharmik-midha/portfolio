import 'package:flutter/material.dart';
import 'package:portfolio/components/header.dart';
import 'package:portfolio/components/skills.dart';
import 'package:portfolio/components/startupcards.dart';
import 'components/collabs.dart';
import 'components/colors.dart';
import 'components/footer.dart';
import 'components/poststartupcard.dart';
import 'components/prefooter.dart';
import 'components/startup.dart';
import 'components/view1.dart';
import 'components/introcard.dart';
import 'components/work.dart';
import 'components/testimonials.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
            View1(),
            IntroCard(),
            Skills(),
            Work(),
            divider,
            Collabs(),
            Startup(),
            StartupCards(),
            PostStartupCards(),
            divider,
            Testimonials(),
            PreFooter(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
