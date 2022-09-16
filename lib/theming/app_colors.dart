part of 'app_theme.dart';

class AppColors {
  const AppColors._();

  static const browserColor = green;

  static const success = Color(0xFF00BA00);
  static const error = Color(0xFFF5222D);
  static const warning = Color(0xFFFF8000);
  static const transparent = Color(0x00000000);

  static const gray = _Gray();
  static const white = _White();
  static const green = _Primary();
  static const pink = _Secondary();
  static const orange = _Tertiary();
  static const blue = _TertiaryBlue();
  static const darkBlue = Color.fromARGB(255, 3, 37, 65);
}

class _Gray extends ColorSwatch<int> {
  static const _primary = 0xFF1A1A1A;

  const _Gray()
      : super(_primary, const <int, Color>{
          100: Color(_primary),
          90: Color(0xFF252627),
          80: Color(0xFF38393A),
          70: Color(0xFF56585A),
          60: Color(0xFF717377),
          50: Color(0xFF8E9296),
          40: Color(0xFFA7AAAF),
          30: Color(0xFFD9DBDD),
          20: Color(0xFFF2F2F2), // Color(0xFFEFEFEF), // Mobile
          10: Color(0xFFF8F8F8), // Color(0xFFF2F2F2), // Mobile
          5: Color(0xFFFAFAFA), // Color(0xFFF2F2F2), // Mobile
        });

  Color get shade100 => this[100]!;

  Color get shade90 => this[90]!;

  Color get shade80 => this[80]!;

  Color get shade70 => this[70]!;

  Color get shade60 => this[60]!;

  Color get shade50 => this[50]!;

  Color get shade40 => this[40]!;

  Color get shade30 => this[30]!;

  Color get shade20 => this[20]!;

  Color get shade10 => this[10]!;

  Color get shade05 => this[5]!;
}

class _White extends ColorSwatch<int> {
  static const _primary = 0xFFFFFFFF;

  const _White()
      : super(_primary, const <int, Color>{
          100: Color(_primary),
          80: Color.fromRGBO(255, 255, 255, 0.8),
          60: Color.fromRGBO(255, 255, 255, 0.6),
          50: Color.fromRGBO(255, 255, 255, 0.5),
          40: Color.fromRGBO(255, 255, 255, 0.4),
          20: Color.fromRGBO(255, 255, 255, 0.2),
          10: Color.fromRGBO(255, 255, 255, 0.1),
          5: Color.fromRGBO(255, 255, 255, 0.05),
        });

  Color get shade100 => this[100]!;

  Color get shade80 => this[80]!;

  Color get shade60 => this[60]!;

  Color get shade50 => this[50]!;

  Color get shade40 => this[40]!;

  Color get shade20 => this[20]!;

  Color get shade10 => this[10]!;

  Color get shade5 => this[5]!;
}

class _Primary extends ColorSwatch<int> {
  static const _primary = 0xFF00A300;

  const _Primary()
      : super(_primary, const <int, Color>{
          100: Color(_primary),
          90: Color(0xFF00BA00),
          80: Color(0xFF55DB55),
          45: Color(0xFF8CE08C),
          40: Color(0xFF99E399),
          25: Color(0xFFBFEDBF),
          20: Color(0xFFCCF1CC),
          10: Color(0xFFE6F9E6),
        });

  Color get shade100 => this[100]!;

  Color get shade90 => this[90]!;

  Color get shade80 => this[80]!;

  Color get shade45 => this[45]!;

  Color get shade40 => this[40]!;

  Color get shade25 => this[25]!;

  Color get shade20 => this[20]!;

  Color get shade10 => this[10]!;
}

class _Secondary extends ColorSwatch<int> {
  static const _primary = 0xFFFF0062;

  const _Secondary()
      : super(_primary, const <int, Color>{
          100: Color(_primary),
          80: Color(0xFFFF3381),
          45: Color(0xFFFF8CB8),
          40: Color(0xFFFF99C0),
          25: Color(0xFFFFBFD7),
          20: Color(0xFFFFCCE0),
          10: Color(0xFFFFE6F0),
        });

  Color get shade100 => this[100]!;

  Color get shade80 => this[80]!;

  Color get shade45 => this[45]!;

  Color get shade40 => this[40]!;

  Color get shade25 => this[25]!;

  Color get shade20 => this[20]!;

  Color get shade10 => this[10]!;
}

class _Tertiary extends ColorSwatch<int> {
  static const _primary = 0xFFFF8000;

  const _Tertiary()
      : super(_primary, const <int, Color>{
          100: Color(_primary),
          80: Color(0xFFFFA842), // 0xFFFF9933 // Mobile
          45: Color(0xFFFFC68C),
          40: Color(0xFFFFCC99),
          25: Color(0xFFFFDFBF),
          20: Color(0xFFFFE6CC),
          10: Color(0xFFFFF3E6),
        });

  Color get shade100 => this[100]!;

  Color get shade80 => this[80]!;

  Color get shade45 => this[45]!;

  Color get shade40 => this[40]!;

  Color get shade25 => this[25]!;

  Color get shade20 => this[20]!;

  Color get shade10 => this[10]!;
}

class _TertiaryBlue extends ColorSwatch<int> {
  static const _primary = 0xFF052AFF;

  const _TertiaryBlue()
      : super(_primary, const <int, Color>{
          100: Color(_primary),
          80: Color(0xFF6E82FF),
          45: Color(0xFFB3BDFF),
          40: Color(0xFFD4D9FF),
        });

  Color get shade100 => this[100]!;

  Color get shade80 => this[80]!;

  Color get shade45 => this[45]!;

  Color get shade40 => this[40]!;
}
