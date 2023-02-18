part of fulde_keyboard;
//import '../virtual_keyboard_multi_language.dart';

abstract class FuldeKeyboardLayoutKeys {
  int activeIndex = 0;

  List<Map> get newEnglishLayout => _newEnglishLayout;
  List<Map> get newFulbeLayout => _newFuldeLayout;

  List<Map> get activeLayout => getLanguage(activeIndex);
  int getLanguagesCount();
  List<Map> getLanguage(int index);

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
  List<Map> getLanguage(int index) {
    switch (defaultLayouts[index]) {
      case FuldeKeyboardDefaultLayouts.english:
        return _newEnglishLayout;
      case FuldeKeyboardDefaultLayouts.fulde:
        return _newFuldeLayout;
      default:
    }
    return _newEnglishLayout;
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

const List<List> _defaultFuldeLayout = [
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

/// Keys for Virtual Keyboard's rows.
const List<Map> _newEnglishLayout = [
  {
    '1': '1',
    '2': '2',
    '3': '3',
    '4': '4',
    '5': '5',
    '6': '6',
    '7': '7',
    '8': '8',
    '9': '9',
    '0': '0',
  },
  // Row 2
  {
    'q': 'Q',
    'w': 'W',
    'e': 'E',
    'r': 'R',
    't': 'T',
    'y': 'Y',
    'u': 'U',
    'i': 'I',
    'o': 'O',
    'p': 'P',
    FuldeKeyboardKeyAction.backspace: FuldeKeyboardKeyAction.backspace
  },
  // Row 3
  {
    'a': 'A',
    's': 'S',
    'd': 'D',
    'f': 'F',
    'g': 'G',
    'h': 'H',
    'j': 'J',
    'k': 'K',
    'l': 'L',
    ';': ';',
    '\'': '\'',
    FuldeKeyboardKeyAction.enter: FuldeKeyboardKeyAction.enter
  },
  // Row 4
  {
    FuldeKeyboardKeyAction.alt: FuldeKeyboardKeyAction.alt,
    'z': 'Z',
    'x': 'X',
    'c': 'C',
    'v': 'V',
    'b': 'B',
    'n': 'N',
    'm': 'M',
    ',': ',',
    '.': '.',
    '/': '/',
    FuldeKeyboardKeyAction.shift: FuldeKeyboardKeyAction.shift
  },
  // Row 5
  {
    FuldeKeyboardKeyAction.switchLanguage:
        FuldeKeyboardKeyAction.switchLanguage,
    '@': '@',
    FuldeKeyboardKeyAction.space: FuldeKeyboardKeyAction.space,
    '&': '&',
    '_': '_',
  }
];

/// Keys for Virtual Keyboard's rows.
const List<Map> _newFuldeLayout = [
  {
    '\u0660': '1',
    '\u0661': '2',
    '\u0662': '3',
    '\u0663': '4',
    '\u0664': '5',
    '\u0665': '6',
    '\u0666': '7',
    '\u0667': '8',
    '\u0668': '9',
    '\u0669': '0',
  },
  // Row 2
  {
    '\u06A8': 'Qa',
    '\u06BB': 'Qb',
    '\u06A0': 'Qc',
    '\u06B3': 'W',
    '\u06AB': 'E',
    '\u06B6': 'R',
    '\u06A2': 'T',
    '\u06A1': 'Y',
    '\u06A3': 'U',
    '\u06AE': 'I',
    '\u06BD': 'O',
    '\u06A4': 'P',
    FuldeKeyboardKeyAction.backspace: FuldeKeyboardKeyAction.backspace
  },
  // Row 3
  {
    '\u069F': 'A',
    '\u06B1': 'S',
    '\u06BC': 'D',
    '\u06AC': 'F',
    '\u06B0': 'G',
    '\u06B9': 'H',
    '\u06B8': 'J',
    '\u06AF': 'K',
    '\u06BA': 'L',
    '\u06A5': 'X;',
    '\u06A9': 'Y;',
    '\u06B5': 'Z;',
    FuldeKeyboardKeyAction.enter: FuldeKeyboardKeyAction.enter
  },
  // Row 4
  {
    FuldeKeyboardKeyAction.alt: FuldeKeyboardKeyAction.alt,
    '\u06b7': 'Za',
    '\u06A7': 'Zb',
    '\u06B2': 'X',
    '\u06A6': 'C',
    '\u06AA': 'V',
    '\u06B4': 'B',
    '\u06BF': 'N',
    '\u06C0': 'M',
    '\u06C1': ',',
    '\u06C3': '.',
    '\u06C2': '/',
    FuldeKeyboardKeyAction.shift: FuldeKeyboardKeyAction.shift
  },
  // Row 5
  {
    FuldeKeyboardKeyAction.switchLanguage:
        FuldeKeyboardKeyAction.switchLanguage,
    '@': '@',
    FuldeKeyboardKeyAction.space: FuldeKeyboardKeyAction.space,
    '.': '.',
    '_': '_',
  }
];
