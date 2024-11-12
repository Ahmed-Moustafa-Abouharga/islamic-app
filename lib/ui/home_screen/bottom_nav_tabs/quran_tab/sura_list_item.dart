import 'package:flutter/material.dart';
import 'package:islamic_app/ui/home_screen/bottom_nav_tabs/quran_tab/quran_details_screen.dart';

class SuraListItem extends StatelessWidget {
  SuraListItem(
      {super.key,
      required this.suraName,
      required this.numOfVerses,
      required this.index});
  int index;
  String suraName;
  int numOfVerses;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,arguments:QuranArgs(suraName, index) ) ;
      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/verse_decoration.png"),
              Text(
                "${++index}",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraName,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white),
              ),
              Text(
                "$numOfVerses Verses",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: 14),
              )
            ],
          ),
          const Spacer(),
          Text(
            suraName,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
