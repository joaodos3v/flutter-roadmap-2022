import 'package:flutter/material.dart';

class PopularStreamersItemWidget extends StatelessWidget {
  final double width;

  const PopularStreamersItemWidget({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xff2A2939),
          borderRadius: BorderRadius.circular(24),
        ),
        width: width,
        height: 100,
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xff69FE96),
                ),
                const CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(
                    'https://is5-ssl.mzstatic.com/image/thumb/Purple125/v4/9e/57/fb/9e57fb48-16ff-9f19-cce3-6436caf97ffa/source/512x512bb.jpg',
                  ),
                ),
                Positioned(
                  right: -3,
                  bottom: -3,
                  child: Stack(alignment: Alignment.center, children: const [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0xff2A2939),
                    ),
                    Icon(
                      Icons.check_circle,
                      size: 20,
                      color: Color(0xff69FE96),
                    ),
                  ]),
                ),
              ],
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'auronplay',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '9.8M followers',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
