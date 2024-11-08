import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/ui/home_screen/bottom_nav_tabs/quran_tab/quran_chapter.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});
  static const routeName = "quran_details_screen";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranArgs args = ModalRoute.of(context)?.settings.arguments as QuranArgs;
    if (suraLines.isEmpty) {
      loadFile(args.index);
    }
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          args.suraName,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/sura_left_decoration.png",
                ),
                Text(
                  args.suraName,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 24),
                ),
                Image.asset(
                  "assets/images/sura_right_decoration.png",
                ),
              ],
            ),
            suraLines.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 33.0),
                    child: ListView.separated(
                        itemBuilder: (context, index) =>
                            QuranChapter(chapter: suraLines[index], index: ++index,),
                        itemCount: suraLines.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                          height: 10,
                        ),
                      ),
                  ),
                ),
            Image.asset("assets/images/quran_details_image.png") ,
          ],
        ),
      ),
    );
  }

  List<String> suraLines = [];

  loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${index}.txt");
    suraLines = fileContent.split('\n');
    print(suraLines);
    setState(() {});
  }
}

class QuranArgs {
  String suraName;
  int index;
  QuranArgs(this.suraName, this.index);
}
