import 'dart:ui';



/// app solid color
enum LightModeColor{
  primary(Color(0xff2DD9AB)),
  secondaryLight(Color(0xff57BD8A)),
  secondaryDark(Color(0xff23A784)),
  button(Color(0xff23A784)),
  error(Color(0xFFFF5733)),
  grey(Color(0xF0575555)),
  white(Color(0xffffffff));

  const LightModeColor(this.color);
  final Color color;
}


/// app dark color
enum DarkModeColor{
  primary(Color(0xff2DD9AB)),
  secondaryLight(Color(0xff57BD8A)),
  secondaryDark(Color(0xff23A784)),
  button(Color(0xff23A784)),
  error(Color(0xFFFF5733)),
  grey(Color(0xF0575555)),
  white(Color(0xffffffff));

  const DarkModeColor(this.color);
  final Color color;
}


