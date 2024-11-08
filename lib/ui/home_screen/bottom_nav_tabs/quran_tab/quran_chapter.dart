import 'package:flutter/material.dart';

class QuranChapter extends StatefulWidget {
  QuranChapter({super.key, required this.chapter, required this.index,this.isClicked=false});
  String chapter;
  int index;
  bool isClicked ;
  @override
  State<QuranChapter> createState() => _QuranChapterState();
}

class _QuranChapterState extends State<QuranChapter> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isClicked = true;
        });

      },

      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: widget.isClicked
                ? Theme.of(context).colorScheme.primary
                : Colors.black,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Theme.of(context).colorScheme.primary)),
        child: Text(
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          '[${widget.index}] ${widget.chapter} ',
          style: widget.isClicked
              ? Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.black)
              : Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
