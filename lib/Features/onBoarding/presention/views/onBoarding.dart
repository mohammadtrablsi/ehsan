import 'package:ehsan/Features/onBoarding/presention/views/widgets/animatedPoints.dart';
import 'package:ehsan/Features/onBoarding/presention/views/widgets/onBoardingButtonPart.dart';
import 'package:ehsan/Features/onBoarding/presention/views/widgets/pageInOnBoarding.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var indexPage = 0;
  PageController pageController = PageController();
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView(
                onPageChanged: ((value) {
                  setIndex(value);
                }),
                controller: pageController,
                children: const [
                  PageInOnBoarding(
                    image: AssetsData.onBoarding1Image,
                    text:
                        "Welcome to Pharmacy we’re \n  excited to have you onboard",
                    heightOfImage: 36,
                  ),
                  PageInOnBoarding(
                    image: AssetsData.onBoarding2Image,
                    text:
                        "here you can search, buy ,and \n get all kinds of medicines locally",
                    heightOfImage: 32,
                  ),
                  PageInOnBoarding(
                    image: AssetsData.onBoarding3Image,
                    text:
                        "now lets get you started to begin \n your journey with us",
                    heightOfImage: 36,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                AnimatedPoints(
                  indexPage: indexPage,
                ),
                SizedBox(
                  height: 7.h,
                ),
                OnBoardingButtonsPart(
                  text: 'Continue',
                  transport: () {
                    // controller.transport();
                  },
                  index: indexPage,
                  goToRegister: () => print("ii"),
                  skip: () => print("ii"),
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ],
        ));
  }

  setIndex(value) {
    setState(() {
      indexPage = value;
    });
  }

  transport() {
    setState(() {
      indexPage++;
      pageController.animateToPage(indexPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
  }

  // skip() {
  //   Get.toNamed(AppRoute.login);
  // }

  // goToRegister() {
  //   Get.toNamed(AppRoute.register);
  // }
}
