import 'package:flutter/material.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
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
                  const AssetImage(
                    "assets/images/quran_icon.png",
                  ),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              hintText: "Sura Name",
              hintStyle: Theme.of(context).textTheme.titleSmall),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Most Recently",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          child: ListView.separated(
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Al-Anbiya"),
                      Text("Al-Anbiya"),
                      Text("112 verses"),
                    ],
                  ),
                  Image.asset("assets/images/recently_quran.png"),
                ],
              ),
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 10,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Sura List",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          child: ListView.separated(
              itemBuilder: (contex, index) => Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/verse_decoration.png"),
                      Text(
                        "1",
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
                        "Al-Fatiha",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.white),
                      ),
                      Text(
                        "7 Verses",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontSize: 14),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "الفاتحه",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  )
                ],
              ),
              separatorBuilder: (context, index) => Container(),
              itemCount: 10),
        ),
      ],
    );
  }
}
