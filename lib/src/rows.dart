part of fulde_keyboard;

/// Keys for Virtual Keyboard's rows.
const List<List> _keyRowsNumeric = [
  // Row 1
  [
    {
      'text': '1',
      'coords': {'row': 0, 'col': 0}
    },
    {
      'text': '2',
      'coords': {'row': 0, 'col': 1}
    },
    {
      'text': '3',
      'coords': {'row': 0, 'col': 2}
    },
    {
      'text': '+',
      'coords': {'row': 0, 'col': 3}
    },
  ],
  // Row 2
  [
    {
      'text': '4',
      'coords': {'row': 1, 'col': 0}
    },
    {
      'text': '5',
      'coords': {'row': 1, 'col': 1}
    },
    {
      'text': '6',
      'coords': {'row': 1, 'col': 2}
    },
    {
      'text': '#',
      'coords': {'row': 1, 'col': 3}
    },
  ],
  // Row 3
  [
    {
      'text': '7',
      'coords': {'row': 2, 'col': 0}
    },
    {
      'text': '8',
      'coords': {'row': 2, 'col': 1}
    },
    {
      'text': '9',
      'coords': {'row': 2, 'col': 2}
    },
    {
      'text': '%',
      'coords': {'row': 2, 'col': 3}
    },
  ],
  // Row 4
  [
    {
      'text': '.',
      'coords': {'row': 3, 'col': 0}
    },
    {
      'text': '0',
      'coords': {'row': 3, 'col': 1}
    },
  ],
];

/// Keys for Virtual Keyboard's rows.
const List<List> _keyRowsAlt = [
  // Row 1
  [
    {
      'text': '\u069A',
      'coords': {'row': 0, 'col': 0},
    },
    {
      'text': '\u069B',
      'coords': {'row': 0, 'col': 1}
    },
    {
      'text': '\u069D',
      'coords': {'row': 0, 'col': 2}
    },
    {
      'text': '\u069C',
      'coords': {'row': 0, 'col': 3}
    },
    {
      'text': '\u069E',
      'coords': {'row': 0, 'col': 4}
    },
    {
      'text': '\u06C0',
      'coords': {'row': 0, 'col': 5}
    },
    {
      'text': '\u06C1',
      'coords': {'row': 0, 'col': 6}
    },
    {
      'text': '\u06C3',
      'coords': {'row': 0, 'col': 7}
    },
    {
      'text': '\u06C2',
      'coords': {'row': 0, 'col': 8}
    },
    {
      'text': ',',
      'coords': {'row': 0, 'col': 9}
    },
  ],
  // Row 2
  [
    {
      'text': '@',
      'coords': {'row': 1, 'col': 0}
    },
    {
      'text': '#',
      'coords': {'row': 1, 'col': 1}
    },
    {
      'text': '\$',
      'coords': {'row': 1, 'col': 2}
    },
    {
      'text': '&',
      'coords': {'row': 1, 'col': 3}
    },
    {
      'text': '_',
      'coords': {'row': 1, 'col': 4}
    },
    {
      'text': '-',
      'coords': {'row': 1, 'col': 5}
    },
    {
      'text': '(',
      'coords': {'row': 1, 'col': 6}
    },
    {
      'text': ')',
      'coords': {'row': 1, 'col': 7}
    },
    {
      'text': '=',
      'coords': {'row': 1, 'col': 8}
    },
    {
      'text': '%',
      'coords': {'row': 1, 'col': 9}
    },
  ],
  // Row 3
  [
    {
      'text': '"',
      'coords': {'row': 2, 'col': 0}
    },
    {
      'text': '*',
      'coords': {'row': 2, 'col': 1}
    },
    {
      'text': '\'',
      'coords': {'row': 2, 'col': 2}
    },
    {
      'text': ':',
      'coords': {'row': 2, 'col': 3}
    },
    {
      'text': ';',
      'coords': {'row': 2, 'col': 4}
    },
    {
      'text': '/',
      'coords': {'row': 2, 'col': 5}
    },
    {
      'text': '!',
      'coords': {'row': 2, 'col': 6}
    },
    {
      'text': '?',
      'coords': {'row': 2, 'col': 7}
    },
    {
      'text': '+',
      'coords': {'row': 2, 'col': 8}
    },
    {
      'text': '.',
      'coords': {'row': 2, 'col': 9}
    },
  ],
  // Row 4
  [
    {
      'text': '₦',
      'coords': {'row': 3, 'col': 0},
    },
    {
      'text': '£',
      'coords': {'row': 3, 'col': 1},
    },
    {
      'text': '₹',
      'coords': {'row': 3, 'col': 2},
    },
    {
      'text': '₵',
      'coords': {'row': 3, 'col': 3},
    },
    {
      'text': '¥',
      'coords': {'row': 3, 'col': 4},
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

    // Create and return new VirtualKeyboardKey object.
    return FuldeKeyboardKey(
      text: key,
      capsText: key.toUpperCase(),
      keyType: FuldeKeyboardKeyType.string,
      coords: [keyNum, rowNum],
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

        // Create and return new VirtualKeyboardKey object.
        return FuldeKeyboardKey(
          text: key,
          keyType: FuldeKeyboardKeyType.string,
          coords: [keyNum, rowNum],
        );
      } else {
        var action = _keyRowsAlt[rowNum][keyNum] as FuldeKeyboardKeyAction;
        return FuldeKeyboardKey(
          keyType: FuldeKeyboardKeyType.action,
          action: action,
          coords: [keyNum, rowNum],
        );
      }
    });
  });
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

      // Create and return new VirtualKeyboardKey object.
      return FuldeKeyboardKey(
        text: key,
        capsText: capsKey,
        keyType: FuldeKeyboardKeyType.string,
        coords: [keyNum, rowNum],
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
