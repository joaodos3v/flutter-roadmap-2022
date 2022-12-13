import 'package:flutter/material.dart';

class FilterChipsController extends ValueNotifier<List<String>> {
  FilterChipsController() : super([all]);

  static const String all = 'All';

  void add(String label) {
    if (value.contains(label)) {
      value.remove(label);

      if (value.isEmpty) {
        value.add(all);
      }
    } else {
      if (label == all) {
        value = [label];
      } else {
        value.remove(all);
        value.add(label);
      }
    }

    notifyListeners();
  }
}
