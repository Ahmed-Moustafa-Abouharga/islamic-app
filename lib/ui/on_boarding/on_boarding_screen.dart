import 'package:flutter/material.dart';
import 'package:islamic_app/ui/on_boarding/on_boarding.dart';
import 'package:islamic_app/ui/on_boarding/on_boarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  static const String routeName = 'on_boarding';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingItem> onBoardingItemList = [
    OnBoardingItem("assets/images/Group.png", "Choose Language", ""),
    OnBoardingItem("assets/images/kabba 1.png", "Welcome To Islami",
        "We Are Very Excited To Have You In Our Community"),
    OnBoardingItem("assets/images/moshaf.png", "Reading the Quran",
        "Read, and your Lord is the Most Generous"),
    OnBoardingItem("assets/images/bearish.png", "Bearish",
        "Praise the name of your Lord, the Most High"),
    OnBoardingItem("assets/images/radio.png", "Holy Quran Radio",
        "You can listen to the Holy Quran Radio through the application for free and easily"),
  ];
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset('assets/images/Masjid.png'),
                      Image.asset('assets/images/Islami.png'),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  itemBuilder: (BuildContext context, int index) =>
                      onBoardingItemList[index],
                  itemCount: onBoardingItemList.length,
                  scrollDirection: Axis.horizontal,
                  controller: pageController,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Back",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontSize: 16),
                      )),
                  SmoothPageIndicator(
                      effect: ExpandingDotsEffect(
                          dotColor: Color(0xff707070),
                          activeDotColor: Theme.of(context).colorScheme.primary,
                          dotHeight: 7,
                          dotWidth: 7),
                      controller: pageController,
                      count: onBoardingItemList.length),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Next",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontSize: 16),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
