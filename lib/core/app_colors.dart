 import 'dart:ui';

import 'package:flutter/material.dart';


/// app solid color
enum SolidModeColor{
  primary(Color(0xFF000421)),
  secondaryLight(Color(0xff191d37)),
  secondaryDark(Color(0xff0D112C)),
  unselectedLabel(Color(0xFFA0A0BA)),
  selectedLabel(Color(0xFFFFFFFF)),
  button(Color(0xff3483FF)),
  highlighter(Color(0xffFE346B));

  const SolidModeColor(this.color);
  final Color color;
}


 /// app dark color
 enum DarkModeColor{
   primary(Color(0xff191818)),
   secondaryLight(Color(0xff383838)),
   secondaryDark(Color(0xff272727)),
   unselectedLabel(Color(0xFFBEBEBE)),
   selectedLabel(Color(0xFFFFFFFF)),
   button(Color(0xff00B67A)),
   highlighter(Color(0xffFF0003));

   const DarkModeColor(this.color);
   final Color color;
 }

 enum SocialColor{
  background(Color(0xffCCE2FF));
   const SocialColor(this.color);
   final Color color;
 }

 enum RatingColor{
   rating0Color(Color(0xffFE346B)),
   rating25Color(Color(0xffA0BF60)),
   rating50Color(Color(0xffFF8F3C)),
   rating75Color(Color(0xff3EB75E)),
   rating100Color(Color(0xff3483FF));

   const RatingColor(this.color);
   final Color color;
 }





