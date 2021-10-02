import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';

class StartupCards extends StatelessWidget {
  const StartupCards({Key? key}) : super(key: key);

  startupCard(String i, String j, String k, String l) {
    return Container(
      height: 350,
      width: 400,
      margin: const EdgeInsets.all(10),
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 50, child: Image.network(i)),
              Text(
                j,
                style: const TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                l,
                style: const TextStyle(fontSize: 18, color: primaryColor),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                color: primaryColor,
                height: 150,
                width: double.infinity,
              ),
              SizedBox(
                width: 1400,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    startupCard(
                        'https://mattfarley.ca/img/logos/kybercore.svg',
                        'Next level plug and play chassis systems for custom do-it-yourself lightsaber builds.',
                        '',
                        'In development'),
                    startupCard(
                        'https://mattfarley.ca/img/logos/houston.svg',
                        'Simple feedback and engagement tools for teams that want to build and ship winning products.',
                        '',
                        'In development'),
                    startupCard(
                        'https://mattfarley.ca/img/logos/basin.svg',
                        'A powerful, easy-to-configure form backend for designers and developers. No coding required.',
                        'https://www.usebasin.com/',
                        'www.usebasin.com'),
                    startupCard(
                        'https://mattfarley.ca/img/logos/ylbuilders.svg',
                        'Beautifully simple websites for independent distributors of Young Living Essential Oils.',
                        'https://ylbuilders.com',
                        'www.ylbuilders.com'),
                    startupCard(
                        'https://mattfarley.ca/img/logos/userforge.svg',
                        'A collaborative tool for creating simple, effective user personas for design projects.',
                        'https://www.userforge.com/',
                        'www.userforge.com'),
                    startupCard(
                        'https://mattfarley.ca/img/logos/dovetail.svg',
                        'A space and member management solution for coworking communities both big and small.',
                        '',
                        'Shutdown in 2017'),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
