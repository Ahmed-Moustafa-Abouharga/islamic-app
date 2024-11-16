import 'package:flutter/material.dart';
import 'package:islamic_app/ui/home_screen/bottom_nav_tabs/hadith_tab/hadith.dart';
import 'package:islamic_app/ui/home_screen/bottom_nav_tabs/hadith_tab/hadith_details_screen.dart';

class HadithItem extends StatelessWidget {
   HadithItem({required this.hadith});
  Hadith hadith;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heith = MediaQuery.of(context).size.height;
    return Container(
      width: width*0.8,
     decoration: BoxDecoration(
       color:Theme.of(context).colorScheme.primary,
       borderRadius: BorderRadius.circular(10),
     ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
            const  SizedBox(height: 10,),

              Stack(alignment: Alignment.bottomCenter,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/sura_left_decoration.png",color: Colors.black,),
                      Spacer(),
                      Image.asset("assets/images/sura_right_decoration.png",color: Colors.black,),
                    ],
                  ),
                  Text(hadith.hadithTitle,style: TextStyle(fontSize: 24)),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(textAlign:TextAlign.center,
                  hadith.hadithContent,style: TextStyle(fontSize: 15),),
              ) ,
            ],
          ),
        ),
      ),
    );
  }
}
