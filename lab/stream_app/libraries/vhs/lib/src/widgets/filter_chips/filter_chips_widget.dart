import 'package:flutter/material.dart';

class FilterChipsWidget extends StatefulWidget {
  final List<String> filters;

  const FilterChipsWidget({super.key, required this.filters});

  @override
  State<FilterChipsWidget> createState() => _FilterChipsWidgetState();
}

class _FilterChipsWidgetState extends State<FilterChipsWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: widget.filters.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: FilterChip(
              label: Text(widget.filters[index]),
              selectedColor: const Color(0xff69FF9B),
              backgroundColor: const Color(0xff2A2939),
              selected: index.isOdd,
              onSelected: (selected) {},
            ),
          );
        }),
      ),
    );
  }
}
