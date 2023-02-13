part of fulde_keyboard;
//import '../virtual_keyboard_multi_language.dart';

abstract class FuldeKeyboardLayoutKeys {
  int activeIndex = 0;

  List<List> get defaultEnglishLayout => _defaultEnglishLayout;
  List<List> get defaultArabicLayout => _defaultArabicLayout;

  List<List> get activeLayout => getLanguage(activeIndex);
  int getLanguagesCount();
  List<List> getLanguage(int index);

  void switchLanguage() {
    if ((activeIndex + 1) == getLanguagesCount()) {
      activeIndex = 0;
    } else {
      activeIndex++;
    }
  }
}

class VirtualKeyboardDefaultLayoutKeys extends FuldeKeyboardLayoutKeys {
  List<FuldeKeyboardDefaultLayouts> defaultLayouts;
  VirtualKeyboardDefaultLayoutKeys(this.defaultLayouts);

  @override
  int getLanguagesCount() => defaultLayouts.length;

  @override
  List<List> getLanguage(int index) {
    switch (defaultLayouts[index]) {
      case FuldeKeyboardDefaultLayouts.english:
        return _defaultEnglishLayout;
      case FuldeKeyboardDefaultLayouts.fulde:
        return _defaultArabicLayout;
      default:
    }
    return _defaultEnglishLayout;
  }
}

/// Keys for Virtual Keyboard's rows.
const List<List> _defaultEnglishLayout = [
  // Row 1
  [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
  ],
  // Row 2
  [
    'q',
    'w',
    'e',
    'r',
    't',
    'y',
    'u',
    'i',
    'o',
    'p',
    FuldeKeyboardKeyAction.backspace
  ],
  // Row 3
  [
    'a',
    's',
    'd',
    'f',
    'g',
    'h',
    'j',
    'k',
    'l',
    ';',
    '\'',
    FuldeKeyboardKeyAction.enter
  ],
  // Row 4
  [
    FuldeKeyboardKeyAction.shift,
    'z',
    'x',
    'c',
    'v',
    'b',
    'n',
    'm',
    ',',
    '.',
    '/',
    FuldeKeyboardKeyAction.shift
  ],
  // Row 5
  [
    FuldeKeyboardKeyAction.switchLanguage,
    '@',
    FuldeKeyboardKeyAction.space,
    '&',
    '_',
  ]
];

const List<List> _defaultArabicLayout = [
  // Row 1
  [
    '\u0660',
    '\u0661',
    '\u0662',
    '\u0663',
    '\u0664',
    '\u0665',
    '\u0666',
    '\u0667',
    '\u0668',
    '\u0669'
  ],
  // Row 2
  [
    '\u06A8',
    '\u06BB',
    '\u06A0',
    '\u06B3',
    '\u06AB',
    '\u06B6',
    '\u06A2',
    '\u06A1',
    '\u06A3',
    '\u06AE',
    '\u06BD',
    '\u06A4',
    FuldeKeyboardKeyAction.backspace
  ],
  // Row 3
  [
    '\u069F',
    '\u06B1',
    '\u06BC',
    '\u06AC',
    '\u06B0',
    '\u06B9',
    '\u06B8',
    '\u06AF',
    '\u06BA',
    '\u06A5',
    '\u06A9',
    '\u06B5',
    FuldeKeyboardKeyAction.enter // '\u2386'
  ],
  // Row 4
  [
    FuldeKeyboardKeyAction.alt, //'\u2387',
    '\u06b7',
    '\u06A7',
    '\u06B2',
    '\u06A6',
    '\u06AA',
    '\u06B4',
    '\u06BF',
    '\u06C0',
    '\u06C1',
    '\u06C3',
    '\u06C2',
    FuldeKeyboardKeyAction.shift
  ],
  // Row 5
  [
    FuldeKeyboardKeyAction.switchLanguage,
    '@',
    FuldeKeyboardKeyAction.space,
    '-',
    '.',
    '_',
  ]
];
