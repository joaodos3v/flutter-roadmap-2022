import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({super.key, required this.title});

  static const double radius = 2;
  static const double horizontalSpacing = 8;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircleAvatar(
                radius: radius,
                backgroundColor: Color(0xff68FF9B),
              ),
              SizedBox(
                width: horizontalSpacing,
              ),
              CircleAvatar(
                radius: radius,
                backgroundColor: Colors.grey,
              ),
              SizedBox(
                width: horizontalSpacing,
              ),
              CircleAvatar(
                radius: radius,
                backgroundColor: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
