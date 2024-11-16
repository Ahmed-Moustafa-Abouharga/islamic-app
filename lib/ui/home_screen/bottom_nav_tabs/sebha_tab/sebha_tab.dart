import 'package:flutter/material.dart';


class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int index = 0;

  int number = 1;

  List<String> tsbeeh = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر'
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text(
          "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: GestureDetector(
            onTap: ()
            {
              number++;
              setState(() {});
              if(number==31)
                {
                  number=1 ;
                  index++;
                  if(index==4)
                    {
                      index=0;
                    }
                }
            },
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: height * -.09,
                    right: width * 0.24,
                    child: Image.asset(
                      "assets/images/sebha_top.png",
                      fit: BoxFit.contain,
                    )),
                Image.asset(
                  "assets/images/SebhaBody.png",
                ),
                Column(
                  children: [
                    Text(
                      tsbeeh[index],
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '$number',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
