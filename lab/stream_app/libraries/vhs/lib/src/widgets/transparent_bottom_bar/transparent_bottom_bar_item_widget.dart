import 'package:flutter/material.dart';

class TransparentBottomBarItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final bool isSelected;

  const TransparentBottomBarItemWidget({
    super.key,
    required this.onTap,
    required this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected ? const Color(0xff68FF9C) : Colors.transparent,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: isSelected ? null : onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
