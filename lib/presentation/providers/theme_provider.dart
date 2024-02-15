import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider<bool>((ref) => false);
final colorListProvider = Provider((ref) => colorList);
final selectedColorProvider = StateProvider((ref) => 0);
final themeNotifierProvider =
    StateNotifierProvider<ThemeProvider, AppTheme>((ref) => ThemeProvider());

class ThemeProvider extends StateNotifier<AppTheme> {
  ThemeProvider() : super(AppTheme());

  void isDarkmodeProvider() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void isSelectedColor(int selectedColor) {
    state = state.copyWith(selectedColor: selectedColor);
  }
}
