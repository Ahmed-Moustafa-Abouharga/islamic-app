import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/ui/on_boarding/on_boarding.dart';

class OnBoardingItem extends StatefulWidget {
  OnBoardingItem(this.image, this.text1, this.text2);
  String image;
  String text1;
  String text2;

  @override
  State<OnBoardingItem> createState() => _OnBoardingItemState();
}

class _OnBoardingItemState extends State<OnBoardingItem> {
  @override
  Widget build(BuildContext context) {
    OnBoarding onBoarding = OnBoarding(
        image: widget.image, text1: widget.text1, text2: widget.text2);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [

          Image(image: AssetImage(onBoarding.image)),
          const SizedBox(height:30 ,),
          Text(
            onBoarding.text1,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
          const SizedBox(height:20 ,),
          Text(
            onBoarding.text2 ?? "",
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
