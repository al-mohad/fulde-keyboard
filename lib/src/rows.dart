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
      'latin': '1',
      'upper': '1',
    },
    {
      //'coords': {'row': 2, 'col': 0},
      'latin': '2',
      'upper': '2',
    },
    {
      //'coords': {'row': 3, 'col': 0},
      'latin': '3',
      'upper': '3',
    },
    {
      //'coords': {'row': 4, 'col': 0},
      'latin': '4',
      'upper': '4',
    },
    {
      //'coords': {'row': 5, 'col': 0},
      'latin': '5',
      'upper': '5',
    },
    {
      //'coords': {'row': 6, 'col': 0},
      'latin': '6',
      'upper': '6',
    },
    {
      //'coords': {'row': 7, 'col': 0},
      'latin': '7',
      'upper': '7',
    },
    {
      //'coords': {'row': 8, 'col': 0},
      'latin': '8',
      'upper': '8',
    },
    {
      //'coords': {'row': 9, 'col': 0},
      'latin': '9',
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
      'latin': '\u014B',
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
      'upper': '0'
    },
    {
      //'coords': {'row': 1, 'col': 0},
      'latin': '1',
      'upper': '1'
    },
    {
      //'coords': {'row': 2, 'col': 0},
      'latin': '2',
      'upper': '2'
    },
    {
      //'coords': {'row': 3, 'col': 0},
      'latin': '3',
      'upper': '3'
    },
    {
      //'coords': {'row': 4, 'col': 0},
      'latin': '4',
      'upper': '4'
    },
    {
      //'coords': {'row': 5, 'col': 0},
      'latin': '5',
      'upper': '5'
    },
    {
      //'coords': {'row': 6, 'col': 0},
      'latin': '6',
      'upper': '6'
    },
    {
      //'coords': {'row': 7, 'col': 0},
      'latin': '7',
      'upper': '7'
    },
    {
      //'coords': {'row': 8, 'col': 0},
      'latin': '8',
      'upper': '8'
    },
    {
      //'coords': {'row': 9, 'col': 0},
      'latin': '9',
      'upper': '9'
    },
  ],
  // Row 2
  [
    {
      //'coords': {'row': 0, 'col': 1},
      'latin': 'Nj',
      'upper': '\u004E\u006A',
    },
    {
      //'coords': {'row': 1, 'col': 1},
      'latin': 'w',
      'upper': '\u0057',
    },
    {
      //'coords': {'row': 2, 'col': 1},
      'latin': 'e',
      'upper': '\u0045',
    },
    {
      //'coords': {'row': 3, 'col': 1},
      'latin': 'r',
      'upper': '\u0052',
    },
    {
      //'coords': {'row': 4, 'col': 1},
      'latin': 't',
      'upper': '\u0054',
    },
    {
      //'coords': {'row': 5, 'col': 1},
      'latin': 'y',
      'upper': '\u0059',
    },
    {
      //'coords': {'row': 6, 'col': 1},
      'latin': 'u',
      'upper': '\u0055',
    },
    {
      //'coords': {'row': 7, 'col': 1},
      'latin': 'i',
      'upper': '\u0049',
    },
    {
      //'coords': {'row': 8, 'col': 1},
      'latin': 'o',
      'upper': '\u004F',
    },
    {
      //'coords': {'row': 9, 'col': 1},
      'latin': 'p',
      'upper': '\u0050',
    },
    {
      //'coords': {'row': 10, 'col': 1},
      'latin': 'ng',
      'upper': '\u004E\u0067',
    },
    {
      //'coords': {'row': 11, 'col': 1},
      'latin': 'mb',
      'upper': '\u004D\u0064',
    },
  ],
  // Row 3
  [
    {
      //'coords': {'row': 0, 'col': 2},
      'latin': 'a',
      'upper': '\u0041',
    },
    {
      //'coords': {'row': 1, 'col': 2},
      'latin': 's',
      'upper': '\u0053',
    },
    {
      //'coords': {'row': 2, 'col': 2},
      'latin': 'd',
      'upper': '\u0044',
    },
    {
      //'coords': {'row': 3, 'col': 2},
      'latin': 'f',
      'upper': '\u0046',
    },
    {
      //'coords': {'row': 4, 'col': 2},
      'latin': 'g',
      'upper': '\u0047',
    },
    {
      //'coords': {'row': 5, 'col': 2},
      'latin': 'h',
      'upper': '\u0048',
    },
    {
      //'coords': {'row': 6, 'col': 2},
      'latin': 'j',
      'upper': '\u004A',
    },
    {
      //'coords': {'row': 7, 'col': 2},
      'latin': 'k',
      'upper': '\u004B',
    },
    {
      //'coords': {'row': 8, 'col': 2},
      'latin': 'l',
      'upper': '\u004C',
    },
    {
      //'coords': {'row': 9, 'col': 2},
      'latin': 'nd',
      'upper': '\u004E\u0064',
    },
    {
      //'coords': {'row': 10, 'col': 2},
      'latin': 'ɓ',
      'upper': '\u0181',
    },
    {
      //'coords': {'row': 11, 'col': 2},
      'latin': 'ƴ',
      'upper': '\u01B3',
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
      'upper': '01',
    },
    {
      //'coords': {'row': 1, 'col': 3},
      'latin': 'ny',
      'upper': '01',
    },
    {
      //'coords': {'row': 2, 'col': 3},
      'latin': 'ŋ',
      'upper': '01',
    },
    {
      //'coords': {'row': 3, 'col': 3},
      'latin': 'c',
      'upper': '01',
    },
    {
      //'coords': {'row': 4, 'col': 3},
      'latin': 'ɗ',
      'upper': '01',
    },
    {
      //'coords': {'row': 5, 'col': 3},
      'latin': 'b',
      'upper': '01',
    },
    {
      //'coords': {'row': 6, 'col': 3},
      'latin': 'n',
      'upper': '01',
    },
    {
      //'coords': {'row': 7, 'col': 3},
      'latin': 'm',
      'upper': '01',
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

        // Create and return new VirtualKeyboardKey object.
        return FuldeKeyboardKey(
          text: key,
          keyType: FuldeKeyboardKeyType.string,
          coords: keyCoords,
          latin: latin,
          upper: upper,
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

      String? latin;
      try {
        latin = _latinKeyRowsAlphanumeric[rowNum][keyNum]['latin'];
      } catch (exc) {}
      ;

      String? upper;
      try {
        upper = _latinKeyRowsAlternate[rowNum][keyNum]['upper'];
      } catch (exc) {}
      ;

      // Create and return new VirtualKeyboardKey object.
      return FuldeKeyboardKey(
        text: key,
        capsText: capsKey,
        keyType: FuldeKeyboardKeyType.string,
        coords: [keyNum, rowNum],
        latin: latin,
        upper: upper,
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
