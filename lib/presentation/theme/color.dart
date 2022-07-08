// NOTE: To create an original color panel,
//specify the base color at the following site.
// http://mcg.mbitson.com

part of app_theme;

class AppColors {
  AppColors._();

  static const MaterialColor violet = MaterialColor(
    _violetPrimaryValue,
    <int, Color>{
      50: Color(0xFFEBEAF3),
      100: Color(0xFFCECBE1),
      200: Color(0xFFADA9CE),
      300: Color(0xFF8C86BA),
      400: Color(0xFF736CAB),
      500: Color(_violetPrimaryValue),
      600: Color(0xFF524B94),
      700: Color(0xFF48418A),
      800: Color(0xFF3F3880),
      900: Color(0xFF2E286E),
    },
  );
  static const int _violetPrimaryValue = 0xFF5A529C;

  static const MaterialColor violetAccent = MaterialColor(
    _violetAccent,
    <int, Color>{
      100: Color(0xFFE4E3EF),
      200: Color(_violetAccent),
      400: Color(0xFFB3AFD0),
      700: Color(0xFF938FBB),
    },
  );
  static const int _violetAccent = 0xFFD2D0E4;

  /// #FFFFFF
  static const Color white = Color(0xFFFFFFFF);

  /// #FF0000
  static const Color black = Color(0xFF000000);

  /// #9E9E9E
  static const Color grey = Color(0xFF9E9E9E);

  /// #DD352F
  static const Color red = Color(0xFFDD352F);
}
