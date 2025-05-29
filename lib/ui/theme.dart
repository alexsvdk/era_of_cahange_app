import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blueSeed,
      errorContainer: AppColors.redLight,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
  ).applyApp();

  static ThemeData get dark => ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blueSeed,
      errorContainer: AppColors.redDark,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  ).applyApp();
}

class AppColors {
  static const blueSeed = Color.fromARGB(255, 0, 26, 255);
  static const blueDark = Color.fromARGB(255, 90, 100, 193);
  static const blueLight = Color.fromARGB(255, 113, 127, 255);

  static const redDark = Color(0xFFA60C0C);
  static const redLight = Color(0xFFE53935);

  static const greenDark = Color(0xFF0A6E0A);
  static const greenLight = Color(0xFF4CAF50);

  static const orangeDark = Color(0xFFA66300);
  static const orangeLight = Color(0xFFFF9800);
}

extension AppThemeColorSchemeX on ColorScheme {
  Color get greenContainer => brightness == Brightness.dark
      ? AppColors.greenDark
      : AppColors.greenLight;

  Color get orangeContainer => brightness == Brightness.dark
      ? AppColors.orangeDark
      : AppColors.orangeDark;
}

class AppBorders {
  static final listTileBorderRadius = BorderRadius.circular(10);
  static final messageBorder = BorderRadius.circular(8);
}

class AppDurations {
  static const lightning = Duration(milliseconds: 150);
  static const fast = Duration(milliseconds: 300);
  static const medium = Duration(milliseconds: 500);
  static const slow = Duration(milliseconds: 700);
}

extension AppThemeX on ThemeData {
  ThemeData applyApp() {
    final primaryColor = colorScheme.primary;
    final contentColor = colorScheme.onSurface;

    final newFloatingActionButtonTheme = floatingActionButtonTheme.copyWith(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      shape: const CircleBorder(),
    );

    final newAppBarTheme = appBarTheme.copyWith(
      centerTitle: true,
      elevation: 0,
      foregroundColor: contentColor,
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: contentColor,
      ),
    );

    final newListTileTheme = listTileTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: AppBorders.listTileBorderRadius,
      ),
      tileColor: colorScheme.surfaceContainer,
      titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      textColor: contentColor,
    );

    final newCardTheme = cardTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: AppBorders.listTileBorderRadius,
      ),
      color: Colors.white,
      elevation: 16,
      shadowColor: Colors.black,
    );

    final newOutlinedButtonTheme = OutlinedButtonThemeData(
      style: ButtonStyle(
        side: const WidgetStatePropertyAll(BorderSide.none),
        minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 48)),
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
        backgroundColor: _ButtonBackgroundColorProperty(this),
        textStyle: const WidgetStatePropertyAll(TextStyle(fontSize: 22)),
      ),
    );

    final newInputDecorationTheme = inputDecorationTheme.copyWith(
      filled: true,
      fillColor: colorScheme.surfaceContainer,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: AppBorders.listTileBorderRadius,
        borderSide: BorderSide.none,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: TextStyle(color: contentColor),
      prefixIconColor: contentColor,
      helperStyle: TextStyle(color: contentColor),
    );

    final newDrawerTheme = drawerTheme.copyWith(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only()),
    );

    // apply google fonts inter
    // final newTextTheme = textTheme.apply(
    //fontFamily: GoogleFonts.inter().fontFamily,
    //);

    return copyWith(
      floatingActionButtonTheme: newFloatingActionButtonTheme,
      appBarTheme: newAppBarTheme,
      listTileTheme: newListTileTheme,
      cardTheme: newCardTheme,
      outlinedButtonTheme: newOutlinedButtonTheme,
      inputDecorationTheme: newInputDecorationTheme,
      textTheme: textTheme,
      drawerTheme: newDrawerTheme,
    );
  }

  ButtonStyle get secondaryButtonStyle => ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(colorScheme.surface),
    foregroundColor: WidgetStatePropertyAll(colorScheme.onSurface),
    side: WidgetStatePropertyAll(
      BorderSide(color: colorScheme.primary, width: 2),
    ),
  );
}

class _ButtonBackgroundColorProperty extends WidgetStateProperty<Color> {
  final ThemeData theme;

  _ButtonBackgroundColorProperty(this.theme);

  @override
  Color resolve(Set<WidgetState> states) {
    final isDark = theme.colorScheme.brightness == Brightness.dark;

    if (states.contains(WidgetState.disabled)) {
      return theme.colorScheme.onSurface.withValues(alpha: 0.12);
    }

    return isDark ? AppColors.blueLight : AppColors.blueDark;
  }
}
