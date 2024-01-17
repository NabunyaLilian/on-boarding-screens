import 'package:flutter/material.dart';
import 'package:on_boarding_screens/home_page.dart';
import 'package:on_boarding_screens/intro_screens/first_screen.dart';
import 'package:on_boarding_screens/intro_screens/second_screen.dart';
import 'package:on_boarding_screens/intro_screens/third_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                isLastPage = (value == 2);
              });
            },
            children: const [FirstScreen(), SecondScreen(), ThirdScreen()],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: const Text('SKIP'),
                  onTap: () {
                    pageController.jumpToPage(2);
                  },
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const SlideEffect(
                      dotColor: Color(0xFFe1e2fe),
                      activeDotColor: Color(0xFF9396cf)),
                ),
                isLastPage
                    ? GestureDetector(
                        child: const Text('DONE'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      const MyHomePage(title: 'My home page')));
                        },
                      )
                    : GestureDetector(
                        child: const Text('NEXT'),
                        onTap: () {
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
