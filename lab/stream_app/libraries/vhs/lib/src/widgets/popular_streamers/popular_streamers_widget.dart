import 'package:flutter/material.dart';
import 'package:vhs/src/widgets/popular_streamers/popular_streamers_item_widget.dart';

class PopularStreamersWidget extends StatelessWidget {
  const PopularStreamersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2.5;

    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => PopularStreamersItemWidget(
          width: width,
        ),
      ),
    );
  }
}
