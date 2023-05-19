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
      'latin': '0'
    },
    {
      //'coords': {'row': 1, 'col': 0},
      'latin': '1'
    },
    {
      //'coords': {'row': 2, 'col': 0},
      'latin': '2'
    },
    {
      //'coords': {'row': 3, 'col': 0},
      'latin': '3'
    },
    {
      //'coords': {'row': 4, 'col': 0},
      'latin': '4'
    },
    {
      //'coords': {'row': 5, 'col': 0},
      'latin': '5'
    },
    {
      //'coords': {'row': 6, 'col': 0},
      'latin': '6'
    },
    {
      //'coords': {'row': 7, 'col': 0},
      'latin': '7'
    },
    {
      //'coords': {'row': 8, 'col': 0},
      'latin': '8'
    },
    {
      //'coords': {'row': 9, 'col': 0},
      'latin': '9'
    },
  ],
  // Row 2
  [
    {
      //'coords': {'row': 0, 'col': 1},
      'latin': 'Nj'
    },
    {
      //'coords': {'row': 1, 'col': 1},
      'latin': 'w'
    },
    {
      //'coords': {'row': 2, 'col': 1},
      'latin': 'e'
    },
    {
      //'coords': {'row': 3, 'col': 1},
      'latin': 'r'
    },
    {
      //'coords': {'row': 4, 'col': 1},
      'latin': 't'
    },
    {
      //'coords': {'row': 5, 'col': 1},
      'latin': 'y'
    },
    {
      //'coords': {'row': 6, 'col': 1},
      'latin': 'u'
    },
    {
      //'coords': {'row': 7, 'col': 1},
      'latin': 'i'
    },
    {
      //'coords': {'row': 8, 'col': 1},
      'latin': 'o'
    },
    {
      //'coords': {'row': 9, 'col': 1},
      'latin': 'p'
    },
    {
      //'coords': {'row': 10, 'col': 1},
      'latin': 'ng'
    },
    {
      //'coords': {'row': 11, 'col': 1},
      'latin': 'mb'
    },
  ],
  // Row 3
  [
    {
      //'coords': {'row': 0, 'col': 2},
      'latin': 'a'
    },
    {
      //'coords': {'row': 1, 'col': 2},
      'latin': 's'
    },
    {
      //'coords': {'row': 2, 'col': 2},
      'latin': 'd'
    },
    {
      //'coords': {'row': 3, 'col': 2},
      'latin': 'f'
    },
    {
      //'coords': {'row': 4, 'col': 2},
      'latin': 'g'
    },
    {
      //'coords': {'row': 5, 'col': 2},
      'latin': 'h'
    },
    {
      //'coords': {'row': 6, 'col': 2},
      'latin': 'j'
    },
    {
      //'coords': {'row': 7, 'col': 2},
      'latin': 'k'
    },
    {
      //'coords': {'row': 8, 'col': 2},
      'latin': 'l'
    },
    {
      //'coords': {'row': 9, 'col': 2},
      'latin': 'nd'
    },
    {
      //'coords': {'row': 10, 'col': 2},
      'latin': 'ɓ'
    },
    {
      //'coords': {'row': 11, 'col': 2},
      'latin': 'ƴ'
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
      'latin': 'X21'
    },
    {
      //'coords': {'row': 1, 'col': 3},
      'latin': 'ny'
    },
    {
      //'coords': {'row': 2, 'col': 3},
      'latin': 'ŋ'
    },
    {
      //'coords': {'row': 3, 'col': 3},
      'latin': 'c'
    },
    {
      //'coords': {'row': 4, 'col': 3},
      'latin': 'ɗ'
    },
    {
      //'coords': {'row': 5, 'col': 3},
      'latin': 'b'
    },
    {
      //'coords': {'row': 6, 'col': 3},
      'latin': 'n'
    },
    {
      //'coords': {'row': 7, 'col': 3},
      'latin': 'm'
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
      'latin': 'X'
    },
    {
      //'coords': {'row': 1, 'col': 0},
      'latin': '1'
    },
    {
      //'coords': {'row': 2, 'col': 0},
      'latin': '2'
    },
    {
      //'coords': {'row': 3, 'col': 0},
      'latin': '3'
    },
    {
      //'coords': {'row': 4, 'col': 0},
      'latin': '4'
    },
    {
      //'coords': {'row': 5, 'col': 0},
      'latin': '5'
    },
    {
      //'coords': {'row': 6, 'col': 0},
      'latin': '6'
    },
    {
      //'coords': {'row': 7, 'col': 0},
      'latin': '7'
    },
    {
      //'coords': {'row': 8, 'col': 0},
      'latin': '8'
    },
    {
      //'coords': {'row': 9, 'col': 0},
      'latin': '9'
    },
  ],
  // Row 2
  [
    {
      //'coords': {'row': 0, 'col': 1},
      'latin': 'Nj'
    },
    {
      //'coords': {'row': 1, 'col': 1},
      'latin': 'w'
    },
    {
      //'coords': {'row': 2, 'col': 1},
      'latin': 'e'
    },
    {
      //'coords': {'row': 3, 'col': 1},
      'latin': 'r'
    },
    {
      //'coords': {'row': 4, 'col': 1},
      'latin': 't'
    },
    {
      //'coords': {'row': 5, 'col': 1},
      'latin': 'y'
    },
    {
      //'coords': {'row': 6, 'col': 1},
      'latin': 'u'
    },
    {
      //'coords': {'row': 7, 'col': 1},
      'latin': 'i'
    },
    {
      //'coords': {'row': 8, 'col': 1},
      'latin': 'o'
    },
    {
      //'coords': {'row': 9, 'col': 1},
      'latin': 'p'
    },
    {
      //'coords': {'row': 10, 'col': 1},
      'latin': 'ng'
    },
    {
      //'coords': {'row': 11, 'col': 1},
      'latin': 'mb'
    },
  ],
  // Row 3
  [
    {
      //'coords': {'row': 0, 'col': 2},
      'latin': 'a'
    },
    {
      //'coords': {'row': 1, 'col': 2},
      'latin': 's'
    },
    {
      //'coords': {'row': 2, 'col': 2},
      'latin': 'd'
    },
    {
      //'coords': {'row': 3, 'col': 2},
      'latin': 'f'
    },
    {
      //'coords': {'row': 4, 'col': 2},
      'latin': 'g'
    },
    {
      //'coords': {'row': 5, 'col': 2},
      'latin': 'h'
    },
    {
      //'coords': {'row': 6, 'col': 2},
      'latin': 'j'
    },
    {
      //'coords': {'row': 7, 'col': 2},
      'latin': 'k'
    },
    {
      //'coords': {'row': 8, 'col': 2},
      'latin': 'l'
    },
    {
      //'coords': {'row': 9, 'col': 2},
      'latin': 'nd'
    },
    {
      //'coords': {'row': 10, 'col': 2},
      'latin': 'ɓ'
    },
    {
      //'coords': {'row': 11, 'col': 2},
      'latin': 'ƴ'
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
      'latin': 'X21'
    },
    {
      //'coords': {'row': 1, 'col': 3},
      'latin': 'ny'
    },
    {
      //'coords': {'row': 2, 'col': 3},
      'latin': 'ŋ'
    },
    {
      //'coords': {'row': 3, 'col': 3},
      'latin': 'c'
    },
    {
      //'coords': {'row': 4, 'col': 3},
      'latin': 'ɗ'
    },
    {
      //'coords': {'row': 5, 'col': 3},
      'latin': 'b'
    },
    {
      //'coords': {'row': 6, 'col': 3},
      'latin': 'n'
    },
    {
      //'coords': {'row': 7, 'col': 3},
      'latin': 'm'
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
    List<int> keyCoords = _parseCoords(_keyRowsNumericCoordinate[rowNum][keyNum]['coords']);

    // Create and return new VirtualKeyboardKey object.
    return FuldeKeyboardKey(
      text: key,
      capsText: key.toUpperCase(),
      keyType: FuldeKeyboardKeyType.string,
      coords: keyCoords
    );
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
        List<int> keyCoords = _parseCoords(_keyRowsAltCoordinate[rowNum][keyNum]['coords']);

        String? latin;
        try {
          latin = _latinKeyRowsAlternate[rowNum][keyNum]['latin'];
        } catch (exc) {};

        // Create and return new VirtualKeyboardKey object.
        return FuldeKeyboardKey(
          text: key,
          keyType: FuldeKeyboardKeyType.string,
          coords: keyCoords,
          latin: latin,
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
      } catch (exc) {};


      // Create and return new VirtualKeyboardKey object.
      return FuldeKeyboardKey(
        text: key,
        capsText: capsKey,
        keyType: FuldeKeyboardKeyType.string,
        coords: [keyNum, rowNum],
        latin: latin,
      );
    } else {
      var action = layoutKeys.activeLayout[rowNum].keys.elementAt(keyNum)
          as FuldeKeyboardKeyAction;
      return FuldeKeyboardKey(
          keyType: FuldeKeyboardKeyType.action, action: action,
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
