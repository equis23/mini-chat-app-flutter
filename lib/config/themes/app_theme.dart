import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF138CE8);

const List<Color> colors = [
  _customColor,
  Colors.teal,
  Color(0xFF1A097D),
  Color(0xFFF0921F),
  Colors.pinkAccent,
  Colors.orangeAccent,
  Colors.blueGrey,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor < colors.length,
            'Selected Color must be between 0 and ${colors.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colors[selectedColor],
      // brightness: Brightness.dark,
    );
  }
}
