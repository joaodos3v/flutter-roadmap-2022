import 'package:flutter/material.dart';
import 'package:vhs/src/widgets/live_now/live_now_item_widget.dart';

class LiveNowWidget extends StatelessWidget {
  const LiveNowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2.5;

    return SizedBox(
      height: width * 1.2,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 16,
        ),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => LiveNowItemWidget(
          width: width,
          imageUrl: index.isEven
              ? 'https://images.ctfassets.net/5lpapfxq15sk/2wrbN1qNfnCxiiOlwZXWXm/2496a832b7a09e7ae01bf04487a92c02/NW-thumb.jpg'
              : 'https://i.pinimg.com/474x/10/be/0b/10be0b30ce76f982a73a8b935987b672--naruto-wizards.jpg',
        ),
      ),
    );
  }
}
