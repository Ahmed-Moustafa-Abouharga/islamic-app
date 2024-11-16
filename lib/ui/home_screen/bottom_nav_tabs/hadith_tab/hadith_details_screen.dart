import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/ui/home_screen/bottom_nav_tabs/hadith_tab/hadith.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});
  static const String routeName = 'hadith_details';
  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context)!.settings.arguments as Hadith;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "hadith ${++arguments.index}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/sura_left_decoration.png",
              ),
              Text(
                arguments.hadithTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              Image.asset(
                "assets/images/sura_right_decoration.png",
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  arguments.hadithContent,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              itemCount: 1,
            ),
          ),
          Image.asset("assets/images/quran_details_image.png"),
        ],
      ),
    );
  }
}
