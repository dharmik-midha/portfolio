import 'package:flutter/material.dart';
import 'package:portfolio/components/colors.dart';

class TestimonialCards extends StatefulWidget {
  const TestimonialCards({Key? key}) : super(key: key);

  @override
  _TestimonialCardsState createState() => _TestimonialCardsState();
}

class _TestimonialCardsState extends State<TestimonialCards> {
  final PageController pageController = PageController(initialPage: 0);

  int currentPage = 0;

  void changePage(index) {
    setState(() {
      currentPage = index;
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          width: 800,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: PageView(
            controller: pageController,
            children: [
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://mattfarley.ca/img/avatars/pascal.png")))),
                    const Text(
                      '“Matt was a real pleasure to work with and we look forward to working with him again. He’s definitely the kind of designer you can trust with a project from start to finish.”',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                    ),
                    Column(
                      children: const <Widget>[
                        Text(
                          'Pascal Tremblay',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Creative Lead, Good Kind',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://mattfarley.ca/img/avatars/alvin.png")))),
                    const Text(
                      "“Matt's a clear communicator with the tenacity and confidence to really dig in to tricky design scenarios and the collaborative friction that's needed to produce excellent work.”",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                    ),
                    Column(
                      children: const <Widget>[
                        Text(
                          'Alvin Engler',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Sr. Systems Developer, Domain7',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => changePage(0),
              child: Container(),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(25, 25),
                  ),
                  shape: MaterialStateProperty.all(const CircleBorder()),
                  backgroundColor: currentPage == 0
                      ? MaterialStateProperty.all(primaryColor)
                      : MaterialStateProperty.all(Colors.grey[300])),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () => changePage(1),
              child: Container(),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(25, 25),
                  ),
                  shape: MaterialStateProperty.all(const CircleBorder()),
                  backgroundColor: currentPage == 1
                      ? MaterialStateProperty.all(primaryColor)
                      : MaterialStateProperty.all(Colors.grey[300])),
            ),
          ],
        ),
        spaceR,
        spaceR,
      ],
    );
  }
}
