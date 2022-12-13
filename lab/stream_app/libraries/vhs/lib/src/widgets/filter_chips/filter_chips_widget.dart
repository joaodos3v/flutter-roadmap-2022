import 'package:flutter/material.dart';
import 'package:vhs/src/widgets/filter_chips/filter_chips_controller.dart';

class FilterChipsWidget extends StatefulWidget {
  final List<String> filters;
  final void Function(List<String> selectedValues) onChange;

  const FilterChipsWidget(
      {super.key, required this.filters, required this.onChange});

  @override
  State<FilterChipsWidget> createState() => _FilterChipsWidgetState();
}

class _FilterChipsWidgetState extends State<FilterChipsWidget> {
  late List<String> _filters;
  final controller = FilterChipsController();

  @override
  void initState() {
    _filters = [FilterChipsController.all, ...widget.filters];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ValueListenableBuilder<List<String>>(
        valueListenable: controller,
        builder: (BuildContext context, value, Widget? child) {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: _filters.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: VhsSelectableChip(
                  label: _filters[index],
                  selectedColor: const Color(0xff69FF9B),
                  backgroundColor: const Color(0xff2A2939),
                  selected: value.contains(_filters[index]),
                  onSelected: (label) {
                    controller.add(label);
                    widget.onChange(controller.value);
                  },
                ),
              );
            }),
          );
        },
      ),
    );
  }
}

class VhsSelectableChip extends StatelessWidget {
  final String label;
  final Color selectedColor;
  final Color backgroundColor;
  final bool selected;
  final void Function(String value) onSelected;

  const VhsSelectableChip({
    super.key,
    required this.label,
    required this.selectedColor,
    required this.backgroundColor,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: selected ? selectedColor : backgroundColor,
        borderRadius: BorderRadius.circular(100),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () => onSelected(label),
          child: Container(
            padding: const EdgeInsets.only(
              top: 6,
              right: 14,
              bottom: 6,
              left: 12,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                if (selected)
                  const Icon(
                    Icons.check,
                    size: 16,
                  ),
                Text(
                  label,
                  style: TextStyle(
                    color: selected ? backgroundColor : Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
