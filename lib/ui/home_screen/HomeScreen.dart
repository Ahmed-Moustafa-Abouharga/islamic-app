import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background_home.png')),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
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
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              currentIndex = value;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == 0
                            ? Color(0xff20202020).withOpacity(.5)
                            : Colors.transparent),
                    child: ImageIcon(
                      AssetImage(
                        "assets/images/quran_icon.png",
                      ),
                    ),
                  ),
                  label: "Quran"),
              BottomNavigationBarItem(
                  backgroundColor: currentIndex == 1
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == 1
                            ? Color(0xff20202020).withOpacity(.5)
                            : Colors.transparent),
                    child: ImageIcon(
                      AssetImage(
                        "assets/images/hadith_icon.png",
                      ),
                    ),
                  ),
                  label: "Hadith"),
              BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == 2
                            ? Color(0xff20202020).withOpacity(.5)
                            : Colors.transparent),
                    child: ImageIcon(
                      AssetImage(
                        "assets/images/sebha_icon.png",
                      ),
                    ),
                  ),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == 3
                            ? Color(0xff20202020).withOpacity(.5)
                            : Colors.transparent),
                    child: ImageIcon(
                      AssetImage(
                        "assets/images/radio-icon.png",
                      ),
                    ),
                  ),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == 4
                            ? Color(0xff20202020).withOpacity(.5)
                            : Colors.transparent),
                    child: ImageIcon(
                      AssetImage(
                        "assets/images/azkar.png",
                      ),
                    ),
                  ),
                  label: "Time"),
            ],
          ),
        ),
      ),
    );
  }
}
