import 'package:flutter/material.dart';

class TsbeetItem extends StatelessWidget {
   TsbeetItem({super.key,required this.tsbeeh,required this.count});
String tsbeeh;
int count;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(tsbeeh,style: Theme.of(context).textTheme.titleLarge,),
        Text("$count",style: Theme.of(context).textTheme.titleLarge) ,
      ],
    );
  }
}

