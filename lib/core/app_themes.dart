import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:tr_store/core/app_colors.dart';
import 'package:tr_store/core/styles.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      splashColor: SolidModeColor.primary.color,
      hintColor: SolidModeColor.unselectedLabel.color,
      primaryColor: SolidModeColor.primary.color,
      primaryColorLight: SolidModeColor.secondaryLight.color,
      primaryColorDark: SolidModeColor.secondaryDark.color,
      scaffoldBackgroundColor: SolidModeColor.primary.color,
      highlightColor: SolidModeColor.highlighter.color,
      canvasColor: SolidModeColor.button.color,
      dividerColor: SolidModeColor.secondaryLight.color,
      appBarTheme: AppBarTheme(
          backgroundColor: SolidModeColor.primary.color,
          surfaceTintColor: SolidModeColor.primary.color),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: SolidModeColor.secondaryLight.color,
        actionTextColor: SolidModeColor.selectedLabel.color,
        contentTextStyle: quanticoBMRegularStyle(SolidModeColor.selectedLabel.color),
      ),
      expansionTileTheme: ExpansionTileThemeData(
        collapsedBackgroundColor: SolidModeColor.secondaryDark.color,
        backgroundColor: SolidModeColor.secondaryDark.color,
        textColor: SolidModeColor.highlighter.color,
        collapsedTextColor: Colors.white,
        expandedAlignment: Alignment.centerLeft,
        childrenPadding: const EdgeInsets.only(left: 16),
        shape: Border.all(color: SolidModeColor.secondaryDark.color),
        collapsedShape: Border.all(color: SolidModeColor.secondaryDark.color),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: SolidModeColor.secondaryDark.color,
        filled: true,
        isDense: true,
        helperStyle: latoBSRegularStyle(SolidModeColor.unselectedLabel.color),
        errorStyle: latoBSRegularStyle(SolidModeColor.highlighter.color),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: SolidModeColor.secondaryLight.color,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: SolidModeColor.highlighter.color,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: SolidModeColor.secondaryLight.color,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: SolidModeColor.secondaryLight.color,
            style: BorderStyle.solid,
            width: 1,
          ),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: SolidModeColor.selectedLabel.color,
        labelStyle: quanticoBLStyle(SolidModeColor.selectedLabel.color),
        unselectedLabelColor: SolidModeColor.unselectedLabel.color,
        unselectedLabelStyle:
            quanticoBLRegularStyle(SolidModeColor.selectedLabel.color),
        labelPadding: EdgeInsets.zero,
        indicator: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            color: SolidModeColor.highlighter.color),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(SolidModeColor.button.color),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          )),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(SolidModeColor.secondaryLight.color),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(const CircleBorder()),
          backgroundColor:
              MaterialStateProperty.all(SolidModeColor.secondaryLight.color),
          iconColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: SolidModeColor.secondaryLight.color),
      drawerTheme: DrawerThemeData(
          backgroundColor: SolidModeColor.secondaryDark.color,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
      checkboxTheme: CheckboxThemeData(
          fillColor:
              MaterialStateProperty.all(SolidModeColor.secondaryDark.color),
          checkColor: MaterialStateProperty.all(Colors.white),
          side:
              BorderSide(width: 1, color: SolidModeColor.secondaryLight.color),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
                width: 1, color: SolidModeColor.secondaryLight.color),
          )),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(SolidModeColor.highlighter.color),
      )
  );

  static final darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      splashColor: DarkModeColor.primary.color,
      hintColor: DarkModeColor.unselectedLabel.color,
      primaryColor: DarkModeColor.primary.color,
      primaryColorLight: DarkModeColor.secondaryLight.color,
      primaryColorDark: DarkModeColor.secondaryDark.color,
      scaffoldBackgroundColor: DarkModeColor.primary.color,
      highlightColor: DarkModeColor.highlighter.color,
      canvasColor: DarkModeColor.button.color,
      dividerColor: DarkModeColor.secondaryLight.color,
      appBarTheme: AppBarTheme(
          backgroundColor: DarkModeColor.primary.color,
          surfaceTintColor: DarkModeColor.primary.color),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: DarkModeColor.secondaryLight.color,
        actionTextColor: DarkModeColor.selectedLabel.color,
        contentTextStyle: quanticoBMRegularStyle(DarkModeColor.selectedLabel.color),
      ),
      expansionTileTheme: ExpansionTileThemeData(
        collapsedBackgroundColor: DarkModeColor.secondaryDark.color,
        backgroundColor: DarkModeColor.secondaryDark.color,
        textColor: DarkModeColor.highlighter.color,
        collapsedTextColor: Colors.white,
        expandedAlignment: Alignment.centerLeft,
        childrenPadding: const EdgeInsets.only(left: 16),
        shape: Border.all(color: DarkModeColor.secondaryDark.color),
        collapsedShape: Border.all(color: DarkModeColor.secondaryDark.color),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: DarkModeColor.secondaryDark.color,
        filled: true,
        isDense: true,
        helperStyle: latoBSRegularStyle(DarkModeColor.unselectedLabel.color),
        errorStyle: latoBSRegularStyle(SolidModeColor.highlighter.color),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: DarkModeColor.secondaryLight.color,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: SolidModeColor.highlighter.color,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: DarkModeColor.secondaryLight.color,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: DarkModeColor.secondaryLight.color,
            style: BorderStyle.solid,
            width: 1,
          ),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: DarkModeColor.selectedLabel.color,
        labelStyle: quanticoBLStyle(DarkModeColor.selectedLabel.color),
        unselectedLabelColor: DarkModeColor.unselectedLabel.color,
        unselectedLabelStyle:
            quanticoBLRegularStyle(DarkModeColor.selectedLabel.color),
        labelPadding: EdgeInsets.zero,
        indicator: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            color: DarkModeColor.highlighter.color),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(quanticoBLStyle(Colors.white)),
          backgroundColor:
              MaterialStateProperty.all(DarkModeColor.button.color),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          )),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(DarkModeColor.secondaryLight.color),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(const CircleBorder()),
          backgroundColor:
              MaterialStateProperty.all(DarkModeColor.secondaryLight.color),
          iconColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: DarkModeColor.secondaryLight.color),
      drawerTheme: DrawerThemeData(
          backgroundColor: DarkModeColor.secondaryLight.color,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
      checkboxTheme: CheckboxThemeData(
          fillColor:
              MaterialStateProperty.all(DarkModeColor.secondaryDark.color),
          checkColor: MaterialStateProperty.all(Colors.white),
          side:
              BorderSide(width: 1, color: DarkModeColor.secondaryLight.color),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
                width: 1, color: DarkModeColor.secondaryLight.color),
          )),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(DarkModeColor.highlighter.color),
      )
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
          ? SolidModeColor.primary.color
          : DarkModeColor.primary.color,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}

extension ThemeExtras on ThemeData {
  Color get particlesColor => brightness == Brightness.light
      ? SolidModeColor.primary.color
      : DarkModeColor.primary.color;
}
