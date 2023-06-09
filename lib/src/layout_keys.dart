part of fulde_keyboard;
//import '../virtual_keyboard_multi_language.dart';

abstract class FuldeKeyboardLayoutKeys {
  int activeIndex = 0;

  List<Map> get newEnglishLayout => _newEnglishLayout;
  List<Map> get newFulbeLayout => _newFuldeLayout;
  List<Map> get newLatinLayout => _newLatinLayout;

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
      case FuldeKeyboardDefaultLayouts.latin:
        return _newLatinLayout;
      default:
    }
    return _newEnglishLayout;
  }
}

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
    // FuldeKeyboardKeyAction.backspace: FuldeKeyboardKeyAction.backspace
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
    // ';': ';',
    // '\'': '\'',
    // FuldeKeyboardKeyAction.enter: FuldeKeyboardKeyAction.enter
  },
  // Row 4
  {
    FuldeKeyboardKeyAction.leftShift: FuldeKeyboardKeyAction.leftShift,
    'z': 'Z',
    'x': 'X',
    'c': 'C',
    'v': 'V',
    'b': 'B',
    'n': 'N',
    'm': 'M',
    // ',': ',',
    // '.': '.',
    // '/': '/',
    FuldeKeyboardKeyAction.backspace: FuldeKeyboardKeyAction.backspace
  },
  // Row 5
  {
    FuldeKeyboardKeyAction.switchLanguage:
        FuldeKeyboardKeyAction.switchLanguage,
    // '@': '@',
    FuldeKeyboardKeyAction.alt: FuldeKeyboardKeyAction.alt,
    FuldeKeyboardKeyAction.space: FuldeKeyboardKeyAction.space,
    FuldeKeyboardKeyAction.switchNumberPad:
        FuldeKeyboardKeyAction.switchNumberPad,
    FuldeKeyboardKeyAction.enter: FuldeKeyboardKeyAction.enter,
  }
];

/// Keys for Virtual Keyboard's rows.
const List<Map> _newFuldeLayout = [
  {
    '\u0660': '\u0660',
    '\u0661': '\u0661',
    '\u0662': '\u0662',
    '\u0663': '\u0663',
    '\u0664': '\u0664',
    '\u0665': '\u0665',
    '\u0666': '\u0666',
    '\u0667': '\u0667',
    '\u0668': '\u0668',
    '\u0669': '\u0669',
  },
  // Row 2
  {
    '\u06A8': '\u0684',
    '\u06BB': '\u0696',
    '\u06A0': '\u067C',
    '\u06B3': '\u068E',
    '\u06AB': '\u0687',
    '\u06B6': '\u0691',
    '\u06A2': '\u067E',
    '\u06A1': '\u067D',
    '\u06A3': '\u067F',
    '\u06AE': '\u0689',
    '\u06BD': '\u0698',
    '\u06A4': '\u0690', //TODO CHECK
    // FuldeKeyboardKeyAction.backspace: FuldeKeyboardKeyAction.backspace
  },
  // Row 3
  {
    '\u069F': '\u067B',
    '\u06B1': '\u068C',
    '\u06BC': '\u0697',
    '\u06AC': '\u0688',
    '\u06B0': '\u068B',
    '\u06B9': '\u0694',
    '\u06B8': '\u0693',
    '\u06AF': '\u068A',
    '\u06BA': '\u0695',
    '\u06A5': '\u0681',
    '\u06A9': '\u0685',
    '\u06B5': '\u0690',
    // FuldeKeyboardKeyAction.enter: FuldeKeyboardKeyAction.enter
  },
  // Row 4
  {
    FuldeKeyboardKeyAction.leftShift: FuldeKeyboardKeyAction.leftShift,
    '\u06B7': '\u0692',
    '\u06A7': '\u0683',
    '\u06B2': '\u068D',
    '\u06A6': '\u0682',
    '\u06AA': '\u0686',
    '\u06B4': '\u068F',
    '\u06BF': '\u0699',
    // '\u06C0': '\u06C0',
    // '\u06C1': '\u06C1',
    // '\u06C3': '\u06C3',
    // '\u06C2': '\u06C2',
    FuldeKeyboardKeyAction.backspace: FuldeKeyboardKeyAction.backspace,
  },
  // Row 5
  {
    FuldeKeyboardKeyAction.switchLanguage:
        FuldeKeyboardKeyAction.switchLanguage,
    // '@': '@',
    FuldeKeyboardKeyAction.alt: FuldeKeyboardKeyAction.alt,
    FuldeKeyboardKeyAction.space: FuldeKeyboardKeyAction.space,
    FuldeKeyboardKeyAction.switchNumberPad:
        FuldeKeyboardKeyAction.switchNumberPad,
    FuldeKeyboardKeyAction.enter: FuldeKeyboardKeyAction.enter,
  }
];

/// Keys for LongVowelsLayout.
const List<Map> _longVowelsLayout = [
  {
    '\u069B': '\u069B',
    '\u069D': '\u069D',
    '\u069C': '\u069C',
    '\u069E': '\u069E',
    '\u069A': '\u069A',
  },
];


/// Keys for Virtual Keyboard's rows.
const List<Map> _newLatinLayout = [
  {
    '\u0660': '\u0660',
    '\u0661': '\u0661',
    '\u0662': '\u0662',
    '\u0663': '\u0663',
    '\u0664': '\u0664',
    '\u0665': '\u0665',
    '\u0666': '\u0666',
    '\u0667': '\u0667',
    '\u0668': '\u0668',
    '\u0669': '\u0669',
  },
  // Row 2
  {
    '\u06A8': '\u0684',
    '\u06BB': '\u0696',
    '\u06A0': '\u067C',
    '\u06B3': '\u068E',
    '\u06AB': '\u0687',
    '\u06B6': '\u0691',
    '\u06A2': '\u067E',
    '\u06A1': '\u067D',
    '\u06A3': '\u067F',
    '\u06AE': '\u0689',
    '\u06BD': '\u0698',
    '\u06A4': '\u0690', //TODO CHECK
    // FuldeKeyboardKeyAction.backspace: FuldeKeyboardKeyAction.backspace
  },
  // Row 3
  {
    '\u069F': '\u067B',
    '\u06B1': '\u068C',
    '\u06BC': '\u0697',
    '\u06AC': '\u0688',
    '\u06B0': '\u068B',
    '\u06B9': '\u0694',
    '\u06B8': '\u0693',
    '\u06AF': '\u068A',
    '\u06BA': '\u0695',
    '\u06A5': '\u0681',
    '\u06A9': '\u0685',
    '\u06B5': '\u0690',
    // FuldeKeyboardKeyAction.enter: FuldeKeyboardKeyAction.enter
  },
  // Row 4
  {
    FuldeKeyboardKeyAction.leftShift: FuldeKeyboardKeyAction.leftShift,
    '\u06B7': '\u0692',
    '\u06A7': '\u0683',
    '\u06B2': '\u068D',
    '\u06A6': '\u0682',
    '\u06AA': '\u0686',
    '\u06B4': '\u068F',
    '\u06BF': '\u0699',
    // '\u06C0': '\u06C0',
    // '\u06C1': '\u06C1',
    // '\u06C3': '\u06C3',
    // '\u06C2': '\u06C2',
    FuldeKeyboardKeyAction.backspace: FuldeKeyboardKeyAction.backspace,
  },
  // Row 5
  {
    FuldeKeyboardKeyAction.switchLanguage:
        FuldeKeyboardKeyAction.switchLanguage,
    // '@': '@',
    FuldeKeyboardKeyAction.alt: FuldeKeyboardKeyAction.alt,
    FuldeKeyboardKeyAction.space: FuldeKeyboardKeyAction.space,
    FuldeKeyboardKeyAction.switchNumberPad:
        FuldeKeyboardKeyAction.switchNumberPad,
    FuldeKeyboardKeyAction.enter: FuldeKeyboardKeyAction.enter,
  }
];
