part of fulde_keyboard;

/// Keys for Virtual Keyboard's rows.
const List<List> _keyRowsNumeric = [
  // Row 1
  [
    '1',
    '2',
    '3',
  ],
  // Row 1
  [
    '4',
    '5',
    '6',
  ],
  // Row 1
  [
    '7',
    '8',
    '9',
  ],
  // Row 1
  [
    '.',
    '0',
  ],
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
    );
  });
}

/// Returns a list of `VirtualKeyboardKey` objects.
List<FuldeKeyboardKey> _getKeyboardRowKeys(
    FuldeKeyboardLayoutKeys layoutKeys, rowNum) {
  // Generate VirtualKeyboardKey objects for each row.
  return List.generate(layoutKeys.activeLayout[rowNum].length, (int keyNum) {
    // Get key string value.
    if (layoutKeys.activeLayout[rowNum][keyNum] is String) {
      String key = layoutKeys.activeLayout[rowNum][keyNum];

      // Create and return new VirtualKeyboardKey object.
      return FuldeKeyboardKey(
        text: key,
        capsText: key.toUpperCase(),
        keyType: FuldeKeyboardKeyType.string,
      );
    } else {
      var action =
          layoutKeys.activeLayout[rowNum][keyNum] as FuldeKeyboardKeyAction;
      return FuldeKeyboardKey(
          keyType: FuldeKeyboardKeyType.action, action: action);
    }
  });
}

/// Returns a list of VirtualKeyboard rows with `VirtualKeyboardKey` objects.
List<List<FuldeKeyboardKey>> _getKeyboardRows(
    FuldeKeyboardLayoutKeys layoutKeys) {
  // Generate lists for each keyboard row.
  return List.generate(layoutKeys.activeLayout.length,
      (int rowNum) => _getKeyboardRowKeys(layoutKeys, rowNum));
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

        // Right Shift
        rowKeys.add(
          FuldeKeyboardKey(
              keyType: FuldeKeyboardKeyType.action,
              action: FuldeKeyboardKeyAction.backspace),
        );
        break;
      default:
        rowKeys = _getKeyboardRowKeysNumeric(rowNum);
    }

    return rowKeys;
  });
}
