
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:tr_store/core/app_colors.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: LightModeColor.primary.color,
      primaryColorLight: LightModeColor.secondaryLight.color,
      primaryColorDark: LightModeColor.secondaryDark.color,
      cardTheme: CardTheme(
        elevation: 1,
        surfaceTintColor: LightModeColor.white.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19),
          side: BorderSide(width: 1,color: LightModeColor.border.color,)
        )
      ),
      dividerTheme: DividerThemeData(
        color: LightModeColor.secondaryDark.color,
        thickness: 1,
        indent: 20,
        endIndent: 20,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: LightModeColor.white.color,
          surfaceTintColor: LightModeColor.white.color,
          actionsIconTheme: IconThemeData(
              color: LightModeColor.primary.color
          ),
          iconTheme: IconThemeData(
              color: LightModeColor.primary.color
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all(LightModeColor.button.color),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          )),
        ),
      ),
  );

  static final darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: DarkModeColor.primary.color,
      primaryColorLight: DarkModeColor.secondaryLight.color,
      primaryColorDark: DarkModeColor.secondaryDark.color,
      dividerTheme: DividerThemeData(
        color: DarkModeColor.secondaryDark.color,
        thickness: 1,
        indent: 20,
        endIndent: 20,
      ),
      cardTheme: CardTheme(
          elevation: 1,
          surfaceTintColor: DarkModeColor.white.color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
              side: BorderSide(width: 0.5,color: DarkModeColor.border.color,)
          )
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: DarkModeColor.primary.color,
          surfaceTintColor: DarkModeColor.primary.color,
          iconTheme: IconThemeData(
              color: DarkModeColor.white.color
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all(DarkModeColor.button.color),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          )),
        ),
      ),
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
      themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
      themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: themeMode == ThemeMode.light
          ? LightModeColor.primary.color
          : DarkModeColor.primary.color,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}

extension ThemeExtras on ThemeData {
  Color get particlesColor => brightness == Brightness.light
      ? LightModeColor.primary.color
      : DarkModeColor.primary.color;
}
