import 'package:flutter/material.dart';

import 'transparent_bottom_bar_item_widget.dart';

class TransparentBottomBarWidget extends StatefulWidget {
  final void Function(int selectedIndex) onChange;

  const TransparentBottomBarWidget({super.key, required this.onChange});

  @override
  State<TransparentBottomBarWidget> createState() =>
      _TransparentBottomBarWidgetState();
}

class _TransparentBottomBarWidgetState
    extends State<TransparentBottomBarWidget> {
  int selectedIndex = 0;

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
      widget.onChange(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black38, Colors.transparent],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TransparentBottomBarItemWidget(
            icon: Icons.home,
            onTap: () => changeIndex(0),
            isSelected: selectedIndex == 0,
          ),
          TransparentBottomBarItemWidget(
            icon: Icons.search,
            onTap: () => changeIndex(1),
            isSelected: selectedIndex == 1,
          ),
          TransparentBottomBarItemWidget(
            icon: Icons.favorite,
            onTap: () => changeIndex(2),
            isSelected: selectedIndex == 2,
          ),
          TransparentBottomBarItemWidget(
            icon: Icons.settings,
            onTap: () => changeIndex(3),
            isSelected: selectedIndex == 3,
          ),
        ],
      ),
    );
  }
}
