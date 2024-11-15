import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, required this.icon});
 final String title;
 final String icon;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      onChanged: (value){},
      style: Theme.of(context).textTheme.titleSmall,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              )),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              )),
          prefixIcon: Container(
            margin: const EdgeInsets.all(8),
            child: ImageIcon(
               AssetImage(
                icon,
              ),
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          hintText: title,
          hintStyle: Theme.of(context).textTheme.titleSmall),
    );
  }
}
