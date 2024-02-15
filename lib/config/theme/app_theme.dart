import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;
  AppTheme({
    this.selectedColor = 0,
    this.isDarkmode = false,
  })  : assert(selectedColor >= 0, 'El color debe ser mayor o igual a 0'),
        assert(selectedColor < colorList.length,
            'El color debe ser menor o igual a ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
      );

  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkmode,
  }) =>
      AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkmode: isDarkmode ?? this.isDarkmode,
      );
}
