import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/ui/home_screen/bottom_nav_tabs/hadith_tab/hadith_item.dart';
import 'package:islamic_app/ui/home_screen/widgets/custom_text_field.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'hadith.dart';
import 'hadith_details_screen.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  int focusedIndex = 0 ;
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    if (ahadithList.isEmpty) {
      loadFile();
    }
    return Expanded(
      child: Column(
        children: [
          const CustomTextField(
              title: "Hadith Name", icon: "assets/images/hadith_icon.png"),
          SizedBox(
            height: height * 0.01,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ScrollSnapList(
                  itemBuilder: (context, index) => ahadithList.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, HadithDetailsScreen.routeName,
                                arguments: Hadith(
                                  hadithTitle: ahadithList[index].hadithTitle,
                                  hadithContent: ahadithList[index].hadithContent,
                                  index: index,
                                ));
                            print("hadith sent");
                          },
                          child: HadithItem(
                            hadith: ahadithList[index],
                          ),
                        ),
                  itemCount: ahadithList.length,
                  onItemFocus: (int index){
                    setState(() {
                      focusedIndex = index;
                    });
                  },
                scrollDirection: Axis.horizontal,
                dynamicItemSize: true,
                reverse: true, itemSize: 290,
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Hadith> ahadithList = [];

  loadFile() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadith = content.split("#");
    for (int i = 0; i < ahadith.length; i++) {
      List<String> hadithLines = ahadith[i].trim().split("\n");
      String hadithTitle = hadithLines[0];
      hadithLines.removeAt(0);
      String hadithContent = hadithLines.join(" ");
      ahadithList.add(Hadith(
          hadithTitle: hadithTitle, hadithContent: hadithContent, index: i));
    }
    setState(() {});
  }
}
