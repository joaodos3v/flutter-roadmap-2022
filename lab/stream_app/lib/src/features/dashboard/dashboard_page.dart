import 'package:flutter/material.dart';
import 'package:vhs/vhs.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.format_align_left),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Center(
              child: Material(
                borderRadius: BorderRadius.circular(150),
                color: Colors.blue,
                child: InkWell(
                  borderRadius: BorderRadius.circular(150),
                  onTap: () {},
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.all(8),
                        child: const Icon(Icons.person),
                      ),
                      const Positioned(
                        top: 0,
                        right: -10,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff68FF9B),
                          radius: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: TitleWidget(),
          ),
          FilterChipsWidget(
            filters: [
              'Sport',
              'Channels',
              'Categories',
              'Food',
              'Sport 1',
              'Channels 1',
              'Categories 1',
              'Food 1',
            ],
          )
        ],
      ),
    );
  }
}
