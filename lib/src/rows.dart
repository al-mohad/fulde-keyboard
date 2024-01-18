part of fulde_keyboard;

/// Keys for Virtual Keyboard's rows.
const List<List> _keyRowsNumeric = [
  // Row 1
  [
    '1',
    '2',
    '3',
    '+',
  ],
  // Row 2
  [
    '4',
    '5',
    '6',
    '#',
  ],
  // Row 3
  [
    '7',
    '8',
    '9',
    '%',
  ],
  // Row 4
  [
    '.',
    '0',
  ],
];

/// Keys for Virtual Keyboard's rows Coordinate.
const List<List> _keyRowsNumericCoordinate = [
  // Row 1
  [
    {
      //'1',
      'coords': {'row': 0, 'col': 0},
    },
    {
      //'2',
      'coords': {'row': 0, 'col': 1},
    },
    {
      //'3',
      'coords': {'row': 0, 'col': 2},
    },
    {
      //'+',
      'coords': {'row': 0, 'col': 3},
    },
  ],
  // Row 2
  [
    {
      //'4',
      'coords': {'row': 1, 'col': 0},
    },
    {
      //'5',
      'coords': {'row': 1, 'col': 1},
    },
    {
      //'6',
      'coords': {'row': 1, 'col': 2},
    },
    {
      //'#',
      'coords': {'row': 1, 'col': 3},
    },
  ],
  // Row 3
  [
    {
      //'7',
      'coords': {'row': 2, 'col': 0},
    },
    {
      //'8',
      'coords': {'row': 2, 'col': 1},
    },
    {
      //'9',
      'coords': {'row': 2, 'col': 2},
    },
    {
      //'%',
      'coords': {'row': 2, 'col': 3},
    }
  ],
  // Row 4
  [
    {
      //'.',
      'coords': {'row': 3, 'col': 0},
    },
    {
      //'0',
      'coords': {'row': 3, 'col': 1},
    }
  ],
];

/// Keys for Virtual Keyboard's rows.
const List<List> _keyRowsAlt = [
  // Row 1
  [
    '\u069A',
    '\u069B',
    '\u069D',
    '\u069C',
    '\u069E',
    '\u06C0',
    '\u06C1',
    '\u06C3',
    '\u06C2',
    ',',
  ],
  // Row 2
  [
    '@',
    '#',
    '\$',
    '&',
    '_',
    '-',
    '(',
    ')',
    '=',
    '%',
  ],
  // Row 3
  [
    '"',
    '*',
    '\'',
    ':',
    ';',
    '/',
    '!',
    '?',
    '+',
    '.',
  ],
  // Row 4
  [
    // '"',
    // '*',
    // '\'',
    // ':',
    // '/',
    // '!',
    // '?',
    // '+',
    '£',
    '₹',
    '¥',
    // FuldeKeyboardKeyAction.backspace,
  ],
  // Row 5
  [
    FuldeKeyboardKeyAction.switchAbc,
    FuldeKeyboardKeyAction.space,
    FuldeKeyboardKeyAction.switchNumberPad,
  ]
];

/// Keys for Virtual Keyboard's rows Coordinate.
const List<List> _keyRowsAltCoordinate = [
  // Row 1
  [
    {
      'coords': {'row': 0, 'col': 0},
    },
    {
      'coords': {'row': 1, 'col': 0},
    },
    {
      'coords': {'row': 2, 'col': 0},
    },
    {
      'coords': {'row': 3, 'col': 0},
    },
    {
      'coords': {'row': 4, 'col': 0},
    },
    {
      'coords': {'row': 5, 'col': 0},
    },
    {
      'coords': {'row': 6, 'col': 0},
    },
    {
      'coords': {'row': 7, 'col': 0},
    },
    {
      'coords': {'row': 8, 'col': 0},
    },
    {
      'coords': {'row': 9, 'col': 0},
    },
  ],
  // Row 2
  [
    {
      'coords': {'row': 0, 'col': 1},
    },
    {
      'coords': {'row': 1, 'col': 1},
    },
    {
      'coords': {'row': 2, 'col': 1},
    },
    {
      'coords': {'row': 3, 'col': 1},
    },
    {
      'coords': {'row': 4, 'col': 1},
    },
    {
      'coords': {'row': 5, 'col': 1},
    },
    {
      'coords': {'row': 6, 'col': 1},
    },
    {
      'coords': {'row': 7, 'col': 1},
    },
    {
      'coords': {'row': 8, 'col': 1},
    },
    {
      'coords': {'row': 9, 'col': 1},
    },
    {
      'coords': {'row': 10, 'col': 1},
    },
    {
      'coords': {'row': 11, 'col': 1},
    },
  ],
  // Row 3
  [
    {
      'coords': {'row': 0, 'col': 2},
    },
    {
      'coords': {'row': 1, 'col': 2},
    },
    {
      'coords': {'row': 2, 'col': 2},
    },
    {
      'coords': {'row': 3, 'col': 2},
    },
    {
      'coords': {'row': 4, 'col': 2},
    },
    {
      'coords': {'row': 5, 'col': 2},
    },
    {
      'coords': {'row': 6, 'col': 2},
    },
    {
      'coords': {'row': 7, 'col': 2},
    },
    {
      'coords': {'row': 8, 'col': 2},
    },
    {
      'coords': {'row': 9, 'col': 2},
    },
    {
      'coords': {'row': 10, 'col': 2},
    },
    {
      'coords': {'row': 11, 'col': 2},
    },
  ],
  // Row 4
  [
    // '"',
    // '*',
    // '\'',
    // ':',
    // '/',
    // '!',
    // '?',
    // '+',
    {
      //'text': '.',
      'coords': {'row': 0, 'col': 3},
    },
    {
      //'text': '.',
      'coords': {'row': 1, 'col': 3},
    },
    {
      //'text': '.',
      'coords': {'row': 2, 'col': 3},
    },
    {
      //'text': '.',
      'coords': {'row': 3, 'col': 3},
    },
    {
      //'text': '.',
      'coords': {'row': 4, 'col': 3},
    },
    {
      //'text': '.',
      'coords': {'row': 5, 'col': 3},
    },
    {
      //'text': '.',
      'coords': {'row': 6, 'col': 3},
    },
    {
      //'text': '.',
      'coords': {'row': 7, 'col': 3},
    },

    // FuldeKeyboardKeyAction.backspace,
  ],
  // Row 5
  [
    FuldeKeyboardKeyAction.switchAbc,
    FuldeKeyboardKeyAction.space,
    FuldeKeyboardKeyAction.switchNumberPad,
  ]
];

// MAKE MODIFICATIONS HERE
// LATIN MAPPING FOR ALPHANUMERIC
const List<List> _latinKeyRowsAlphanumeric = [
  // Row 1
  [
    {
      //'coords': {'row': 0, 'col': 0},
      'latin': '\u0660',
      'upper': '\u0660',
    },
    {
      //'coords': {'row': 1, 'col': 0},
      'latin': '\u0661',
      'upper': '1',
    },
    {
      //'coords': {'row': 2, 'col': 0},
      'latin': '\u0662',
      'upper': '2',
    },
    {
      //'coords': {'row': 3, 'col': 0},
      'latin': '\u0663',
      'upper': '3',
    },
    {
      //'coords': {'row': 4, 'col': 0},
      'latin': '\u0664',
      'upper': '4',
    },
    {
      //'coords': {'row': 5, 'col': 0},
      'latin': '\u0665',
      'upper': '5',
    },
    {
      //'coords': {'row': 6, 'col': 0},
      'latin': '\u0666',
      'upper': '6',
    },
    {
      //'coords': {'row': 7, 'col': 0},
      'latin': '\u0667',
      'upper': '7',
    },
    {
      //'coords': {'row': 8, 'col': 0},
      'latin': '\u0668',
      'upper': '8',
    },
    {
      //'coords': {'row': 9, 'col': 0},
      'latin': '\u0669',
      'upper': '9',
    },
  ],
  // Row 2
  [
    {
      //'coords': {'row': 0, 'col': 1},
      'latin': '\u006E\u006A',
      'upper': '\u006E\u006A',
    },
    {
      //'coords': {'row': 1, 'col': 1},
      'latin': '\u0077',
      'upper': '02',
    },
    {
      //'coords': {'row': 2, 'col': 1},
      'latin': '\u0065',
      'upper': '02',
    },
    {
      //'coords': {'row': 3, 'col': 1},
      'latin': '\u0072',
      'upper': '02',
    },
    {
      //'coords': {'row': 4, 'col': 1},
      'latin': '\u0074',
      'upper': '02',
    },
    {
      //'coords': {'row': 5, 'col': 1},
      'latin': '\u0079',
      'upper': '02',
    },
    {
      //'coords': {'row': 6, 'col': 1},
      'latin': '\u0075',
      'upper': '02',
    },
    {
      //'coords': {'row': 7, 'col': 1},
      'latin': '\u0069',
      'upper': '02',
    },
    {
      //'coords': {'row': 8, 'col': 1},
      'latin': '\u006F',
      'upper': '02',
    },
    {
      //'coords': {'row': 9, 'col': 1},
      'latin': '\u0070',
      'upper': '02',
    },
    {
      //'coords': {'row': 10, 'col': 1},
      'latin': '\u006E\u0067',
      'upper': '\u004E\u0067',
    },
    {
      //'coords': {'row': 11, 'col': 1},
      'latin': '\u006D\u0062',
      'upper': '\u004D\u0062',
    },
  ],
  // Row 3
  [
    {
      //'coords': {'row': 0, 'col': 2},
      'latin': '\u0061',
      'upper': '02',
    },
    {
      //'coords': {'row': 1, 'col': 2},
      'latin': '\u0073',
      'upper': '02',
    },
    {
      //'coords': {'row': 2, 'col': 2},
      'latin': '\u0064',
      'upper': '02',
    },
    {
      //'coords': {'row': 3, 'col': 2},
      'latin': '\u0066',
      'upper': '02',
    },
    {
      //'coords': {'row': 4, 'col': 2},
      'latin': '\u0067',
      'upper': '02',
    },
    {
      //'coords': {'row': 5, 'col': 2},
      'latin': '\u0068',
      'upper': '02',
    },
    {
      //'coords': {'row': 6, 'col': 2},
      'latin': '\u006A',
      'upper': '02',
    },
    {
      //'coords': {'row': 7, 'col': 2},
      'latin': '\u006B',
      'upper': '02',
    },
    {
      //'coords': {'row': 8, 'col': 2},
      'latin': '\u006C',
      'upper': '02',
    },
    {
      //'coords': {'row': 9, 'col': 2},
      'latin': '\u006E\u0064',
      'upper': '02',
    },
    {
      //'coords': {'row': 10, 'col': 2},
      'latin': '\u0253',
      'upper': '02',
    },
    {
      //'coords': {'row': 11, 'col': 2},
      'latin': '\u01B4',
      'upper': '02',
    },
  ],
  // Row 4
  [
    // '"',
    // '*',
    // '\'',
    // ':',
    // '/',
    // '!',
    // '?',
    // '+',
    {
      //'coords': {'row': 0, 'col': 3},
      'latin': '\u006E\u0079',
      'upper': '02',
    },
    {
      //'coords': {'row': 1, 'col': 3},
      'latin': '\u006E\u0079',
      'upper': '02',
    },
    {
      //'coords': {'row': 2, 'col': 3},
      'latin': '\u014B',
      'upper': '02',
    },
    {
      //'coords': {'row': 3, 'col': 3},
      'latin': '\u0063',
      'upper': '02',
    },
    {
      //'coords': {'row': 4, 'col': 3},
      'latin': '\u0257',
      'upper': '02',
    },
    {
      //'coords': {'row': 5, 'col': 3},
      'latin': '\u0062',
      'upper': '02',
    },
    {
      //'coords': {'row': 6, 'col': 3},
      'latin': '\u006E',
      'upper': '02',
    },
    {
      //'coords': {'row': 7, 'col': 3},
      'latin': '\u006D',
      'upper': '02',
    },

    // FuldeKeyboardKeyAction.backspace,
  ],
  // Row 5
  [
    FuldeKeyboardKeyAction.switchAbc,
    FuldeKeyboardKeyAction.space,
    FuldeKeyboardKeyAction.switchNumberPad,
  ]
];

// MAKE MODIFICATIONS HERE
// LATIN MAPPING FOR ALTERNATE
const List<List> _latinKeyRowsAlternate = [
  // Row 1
  [
    {
      //'coords': {'row': 0, 'col': 0},
      'latin': '0',
      'upper': '\u0660',
      'fulde': '\u0660'
      'upper': '\u0660'
    },
    {
      //'coords': {'row': 1, 'col': 0},
      'latin': '1',
      'upper': '\u0661',
      'fulde': '\u0661'
      'upper': '\u0661'
    },
    {
      //'coords': {'row': 2, 'col': 0},
      'latin': '2',
      'upper': '\u0662',
      'fulde': '\u0662'

      'upper': '\u0662'
    },
    {
      //'coords': {'row': 3, 'col': 0},
      'latin': '3',
      'upper': '\u0663',
      'fulde': '\u0663'
      'upper': '\u0663'
    },
    {
      //'coords': {'row': 4, 'col': 0},
      'latin': '4',
      'upper': '\u0664',
      'fulde': '\u0664'
      'upper': '\u0664'
    },
    {
      //'coords': {'row': 5, 'col': 0},
      'latin': '5',
      'upper': '\u0665',
      'fulde': '\u0665'
      'upper': '\u0665'
    },
    {
      //'coords': {'row': 6, 'col': 0},
      'latin': '6',
      'upper': '\u0666',
      'fulde': '\u0666'
      'upper': '\u0666'
    },
    {
      //'coords': {'row': 7, 'col': 0},
      'latin': '7',
      'upper': '\u0667',
      'fulde': '\u0667'
      'upper': '\u0667'
    },
    {
      //'coords': {'row': 8, 'col': 0},
      'latin': '8',
      'upper': '\u0668',
      'fulde': '\u0668'
      'upper': '\u0668'
    },
    {
      //'coords': {'row': 9, 'col': 0},
      'latin': '9',
      'upper': '\u0669',
      'fulde': '\u0669'
      'upper': '\u0669'
    },
  ],
  // Row 2
  [
    {
      //'coords': {'row': 0, 'col': 1},
      'latin': 'Nj',
      'upper': '\u004E\u006A',
      'fulde': '\u0684'

    },
    {
      //'coords': {'row': 1, 'col': 1},
      'latin': 'w',
      'upper': '\u0057',
      'fulde': '\u0696'

    },
    {
      //'coords': {'row': 2, 'col': 1},
      'latin': 'e',
      'upper': '\u0045',
      'fulde': '\u067C'

    },
    {
      //'coords': {'row': 3, 'col': 1},
      'latin': 'r',
      'upper': '\u0052',
      'fulde': '\u068E'

    },
    {
      //'coords': {'row': 4, 'col': 1},
      'latin': 't',
      'upper': '\u0054',
      'fulde': '\u0687'

    },
    {
      //'coords': {'row': 5, 'col': 1},
      'latin': 'y',
      'upper': '\u0059',
      'fulde': '\u0691'

    },
    {
      //'coords': {'row': 6, 'col': 1},
      'latin': 'u',
      'upper': '\u0055',
      'fulde': '\u067E'

    },
    {
      //'coords': {'row': 7, 'col': 1},
      'latin': 'i',
      'upper': '\u0049',
      'fulde': '\u067D'

    },
    {
      //'coords': {'row': 8, 'col': 1},
      'latin': 'o',
      'upper': '\u004F',
      'fulde': '\u067F'

    },
    {
      //'coords': {'row': 9, 'col': 1},
      'latin': 'p',
      'upper': '\u0050',
      'fulde': '\u0689'

    },
    {
      //'coords': {'row': 10, 'col': 1},
      'latin': 'ng',
      'upper': '\u004E\u0067',
      'fulde': '\u0698'
    },
    {
      //'coords': {'row': 11, 'col': 1},
      'latin': 'mb',
      'upper': '\u004D\u0064',
      'fulde': '\u0690'
    },
  ],
  // Row 3
  [
    {
      //'coords': {'row': 0, 'col': 2},
      'latin': 'a',
      'upper': '\u0041',
      'fulde': '\u067B'

    },
    {
      //'coords': {'row': 1, 'col': 2},
      'latin': 's',
      'upper': '\u0053',
      'fulde': '\u068C'

    },
    {
      //'coords': {'row': 2, 'col': 2},
      'latin': 'd',
      'upper': '\u0044',
      'fulde': '\u0697'

    },
    {
      //'coords': {'row': 3, 'col': 2},
      'latin': 'f',
      'upper': '\u0046',
      'fulde': '\u0688'

    },
    {
      //'coords': {'row': 4, 'col': 2},
      'latin': 'g',
      'upper': '\u0047',
      'fulde': '\u068B'

    },
    {
      //'coords': {'row': 5, 'col': 2},
      'latin': 'h',
      'upper': '\u0048',
      'fulde': '\u0694'

    },
    {
      //'coords': {'row': 6, 'col': 2},
      'latin': 'j',
      'upper': '\u004A',
      'fulde': '\u0693'

    },
    {
      //'coords': {'row': 7, 'col': 2},
      'latin': 'k',
      'upper': '\u004B',
      'fulde': '\u068A'

    },
    {
      //'coords': {'row': 8, 'col': 2},
      'latin': 'l',
      'upper': '\u004C',
      'fulde': '\u0695'

    },
    {
      //'coords': {'row': 9, 'col': 2},
      'latin': 'nd',
      'upper': '\u004E\u0064',
      'fulde': '\u0681'

    },
    {
      //'coords': {'row': 10, 'col': 2},
      'latin': 'ɓ',
      'upper': '\u0181',
      'fulde': '\u0685'

    },
    {
      //'coords': {'row': 11, 'col': 2},
      'latin': 'ƴ',
      'upper': '\u01B3',
      'fulde': '\u0690'

    },
  ],
  // Row 4
  [
    // '"',
    // '*',
    // '\'',
    // ':',
    // '/',
    // '!',
    // '?',
    // '+',
    {
      //'coords': {'row': 0, 'col': 3},
      'latin': 'X21',
      'upper': '\u004E\u0079',
      'fulde': '\u0660'

    },
    {
      //'coords': {'row': 1, 'col': 3},
      'latin': 'ny',
      'upper': '\u004E\u0079',
      'fulde': '\u0692'

    },
    {
      //'coords': {'row': 2, 'col': 3},
      'latin': 'ŋ',
      'upper': '\u014A',
      'fulde': '\u0683'

    },
    {
      //'coords': {'row': 3, 'col': 3},
      'latin': 'c',
      'upper': '\u0043',
      'fulde': '\u068D'

    },
    {
      //'coords': {'row': 4, 'col': 3},
      'latin': 'ɗ',
      'upper': '\u018A',
      'fulde': '\u0682'

    },
    {
      //'coords': {'row': 5, 'col': 3},
      'latin': 'b',
      'upper': '\u0042',
      'fulde': '\u0686'

    },
    {
      //'coords': {'row': 6, 'col': 3},
      'latin': 'n',
      'upper': '\u004E',
      'fulde': '\u068F'

    },
    {
      //'coords': {'row': 7, 'col': 3},
      'latin': 'm',
      'upper': '\u004D',
      'fulde': '\u0699'

    },

    // FuldeKeyboardKeyAction.backspace,
  ],
  // Row 5
  [
    FuldeKeyboardKeyAction.switchAbc,
    FuldeKeyboardKeyAction.space,
    FuldeKeyboardKeyAction.switchNumberPad,
  ]
];

/// Returns a list of `VirtualKeyboardKey` objects for Numeric keyboard.
List<FuldeKeyboardKey> _getKeyboardRowKeysNumeric(rowNum) {
  // Generate VirtualKeyboardKey objects for each row.
  return List.generate(_keyRowsNumeric[rowNum].length, (int keyNum) {
    // Get key string value.
    String key = _keyRowsNumeric[rowNum][keyNum];
    List<int> keyCoords =
        _parseCoords(_keyRowsNumericCoordinate[rowNum][keyNum]['coords']);

    // Create and return new VirtualKeyboardKey object.
    return FuldeKeyboardKey(
        text: key,
        capsText: key.toUpperCase(),
        keyType: FuldeKeyboardKeyType.string,
        coords: keyCoords);
  });
}

/// Returns a list of VirtualKeyboard rows with `VirtualKeyboardKey` objects.
List<List<FuldeKeyboardKey>> _getKeyboardRowsNumeric() {
  // Generate lists for each keyboard row.
  return List.generate(_keyRowsNumeric.length, (int rowNum) {
    // Will contain the keyboard row keys.
    List<FuldeKeyboardKey> rowKeys = [];
    // We have to add Action keys to keyboard.
    switch (rowNum) {
      case 3:
        // String keys.
        rowKeys.addAll(_getKeyboardRowKeysNumeric(rowNum));
        rowKeys.add(
          FuldeKeyboardKey(
            keyType: FuldeKeyboardKeyType.action,
            action: FuldeKeyboardKeyAction.alt,
            coords: [rowKeys.length, rowNum],
          ),
        );
        // Right Shift
        rowKeys.add(
          FuldeKeyboardKey(
            keyType: FuldeKeyboardKeyType.action,
            action: FuldeKeyboardKeyAction.backspace,
            coords: [rowKeys.length, rowNum],
          ),
        );
        break;
      default:
        rowKeys = _getKeyboardRowKeysNumeric(rowNum);
    }
    return rowKeys;
  });
}

/// Returns a list of VirtualKeyboard rows with `VirtualKeyboardKey` objects.
List<List<FuldeKeyboardKey>> _getKeyboardRowsAlt() {
  // Generate lists for each keyboard row.
  return List.generate(_keyRowsAlt.length, (int rowNum) {
    // Generate VirtualKeyboardKey objects for each row.
    return List.generate(_keyRowsAlt[rowNum].length, (int keyNum) {
      // Get key string value.
      if (_keyRowsAlt[rowNum][keyNum] is String) {
        String key = _keyRowsAlt[rowNum][keyNum];
        List<int> keyCoords =
            _parseCoords(_keyRowsAltCoordinate[rowNum][keyNum]['coords']);

        String latin = _latinKeyRowsAlternate[rowNum][keyNum]['latin'];
        // String? latin;
        // try {
        //   latin = _latinKeyRowsAlternate[rowNum][keyNum]['latin'];
        // } catch (exc) {}
        // ;

        String upper = _latinKeyRowsAlternate[rowNum][keyNum]['upper'];
        // String? upper;
        // try {
        //   upper = _latinKeyRowsAlternate[rowNum][keyNum]['upper'];
        // } catch (exc) {}
        // ;

        String fulde = _latinKeyRowsAlternate[rowNum][keyNum]['fulde'];

        // Create and return new VirtualKeyboardKey object.
        return FuldeKeyboardKey(
          text: key,
          keyType: FuldeKeyboardKeyType.string,
          coords: keyCoords,
          latin: latin,
          upper: upper,
          fulde: fulde,

        );
      } else {
        var action = _keyRowsAlt[rowNum][keyNum] as FuldeKeyboardKeyAction;
        return FuldeKeyboardKey(
            keyType: FuldeKeyboardKeyType.action, action: action);
      }
    });
  });
}

List<int> _parseCoords(Map<String, int> coords) {
  int row = coords['row'] ?? 0;
  int col = coords['col'] ?? 0;
  return [row, col];
}

/// Returns a list of `VirtualKeyboardKey` objects.
List<FuldeKeyboardKey> _getKeyboardRowKeysAlphaNumeric(
    FuldeKeyboardLayoutKeys layoutKeys, rowNum) {
  // Generate VirtualKeyboardKey objects for each row.
  return List.generate(layoutKeys.activeLayout[rowNum].length, (int keyNum) {
    // Get key string value.
    if (layoutKeys.activeLayout[rowNum].keys.elementAt(keyNum) is String) {
      String key = layoutKeys.activeLayout[rowNum].keys.elementAt(keyNum);
      String capsKey = layoutKeys.activeLayout[rowNum].values.elementAt(keyNum);

      String latin = _latinKeyRowsAlphanumeric[rowNum][keyNum]['latin'];
      // String? latin;
      // try {
      //   latin = _latinKeyRowsAlphanumeric[rowNum][keyNum]['latin'];
      // } catch (exc) {}
      // ;

      String upper = _latinKeyRowsAlternate[rowNum][keyNum]['upper'];
      // String? upper;
      // try {
      //   upper = _latinKeyRowsAlternate[rowNum][keyNum]['upper'];
      // } catch (exc) {}
      // ;

      String fulde = _latinKeyRowsAlternate[rowNum][keyNum]['fulde'];

      // Create and return new VirtualKeyboardKey object.
      return FuldeKeyboardKey(
        text: key,
        capsText: capsKey,
        keyType: FuldeKeyboardKeyType.string,
        coords: [keyNum, rowNum],
        latin: latin,
        upper: upper,
        fulde: fulde,

      );
    } else {
      var action = layoutKeys.activeLayout[rowNum].keys.elementAt(keyNum)
          as FuldeKeyboardKeyAction;
      return FuldeKeyboardKey(
        keyType: FuldeKeyboardKeyType.action,
        action: action,
        coords: [keyNum, rowNum],
      );
    }
  });
}

/// Returns a list of VirtualKeyboard rows with `VirtualKeyboardKey` objects.
List<List<FuldeKeyboardKey>> _getKeyboardRowsAlphaNumeric(
    FuldeKeyboardLayoutKeys layoutKeys) {
  // Generate lists for each keyboard row.
  return List.generate(layoutKeys.activeLayout.length,
      (int rowNum) => _getKeyboardRowKeysAlphaNumeric(layoutKeys, rowNum));
}
