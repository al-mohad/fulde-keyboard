part of fulde_keyboard;

/// The default keyboard height. Can we overriden by passing
///  `height` argument to `VirtualKeyboard` widget.
const double _virtualKeyboardDefaultHeight = 300;

const int _virtualKeyboardBackspaceEventPeriod = 250;

/// Virtual Keyboard widget.
class FuldeKeyboard extends StatefulWidget {
  /// Keyboard Type: Should be inited in creation time.
  final FuldeKeyboardType type;

  /// Callback for Key press event. Called with pressed `Key` object.
  final Function? onKeyPress;

  /// Virtual keyboard height. Default is 300
  final double height;

  /// Virtual keyboard height. Default is full screen width
  final double? width;

  /// Color for key texts and icons.
  final Color textColor;

  /// Font size for keyboard keys.
  final double fontSize;

  /// the custom layout for multi or single language
  final FuldeKeyboardLayoutKeys? customLayoutKeys;

  /// the text controller go get the output and send the default input
  final TextEditingController? textController;

  /// The builder function will be called for each Key object.
  final Widget Function(BuildContext context, FuldeKeyboardKey key)? builder;

  /// Set to true if you want only to show Caps letters.
  final bool alwaysCaps;

  /// inverse the layout to fix the issues with right to left languages.
  final bool reverseLayout;

  /// used for multi-languages with default layouts, the default is English only
  /// will be ignored if customLayoutKeys is not null
  final List<FuldeKeyboardDefaultLayouts>? defaultLayouts;

  const FuldeKeyboard(
      {Key? key,
        required this.type,
        this.onKeyPress,
        this.builder,
        this.width,
        this.defaultLayouts,
        this.customLayoutKeys,
        this.textController,
        this.reverseLayout = false,
        this.height = _virtualKeyboardDefaultHeight,
        this.textColor = Colors.black,
        this.fontSize = 18,
        this.alwaysCaps = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FuldeKeyboardState();
  }
}

/// Holds the state for Virtual Keyboard class.
class _FuldeKeyboardState extends State<FuldeKeyboard> {
  late FuldeKeyboardType type;
  Function? onKeyPress;
  late TextEditingController textController;
  // The builder function will be called for each Key object.
  Widget Function(BuildContext context, FuldeKeyboardKey key)? builder;
  late double height;
  double? width;
  late Color textColor;
  late double fontSize;
  late bool alwaysCaps;
  late bool reverseLayout;
  late FuldeKeyboardLayoutKeys customLayoutKeys;
  // Text Style for keys.
  late TextStyle textStyle;

  // True if shift is enabled.
  bool isShiftEnabled = false;

  bool isABCEnabled = false;

  void _onKeyPress(FuldeKeyboardKey key) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double keyboardHeight = 300.0;//MediaQuery.of(context).size.height;

    // //comment these off
    // print("key:${key.text}  key.latin:${key.latin}  key.coord:${key.coords}");
    // print("key.text: ${key.text}");
    // print("key.latin: ${key.latin}");
    // print("key.coord: ${key.coords}");
    // print("deviceWidth: $deviceWidth");
    // print("Type: $type");
    // print("isABCEnabled: $isABCEnabled");


    //print("type: $type"); "FuldeKeyboardType.alphanumeric", "FuldeKeyboardType.alt"
    //print(customLayoutKeys.activeLayout[0].toString());
    //print(_keyRowsAlt[0].toString());

    // height and width specifications
    late double kWidth;
    late double kHeight;// = 60;



    //divide screenwidth by number of keys: kWidth
    if (key.coords != null) {
      if (type.toString() == "FuldeKeyboardType.alphanumeric") {
        if (key.coords![1] == 0) { //row1
          kWidth = deviceWidth / customLayoutKeys.newFulbeLayout[0].length;
        } else if (key.coords![1] == 1) { //row2
          kWidth = deviceWidth / customLayoutKeys.newFulbeLayout[1].length;
        } else if (key.coords![1] == 2) { //row3
          kWidth = deviceWidth / customLayoutKeys.newFulbeLayout[2].length;
        } else if (key.coords![1] == 3) { //row4
          kWidth = deviceWidth / customLayoutKeys.newFulbeLayout[3].length;
        }
        kHeight = keyboardHeight / customLayoutKeys.newFulbeLayout.length;
        // else { //row5
        //   kWidth = 36; //*default
        // }
      } else if (type.toString() == "FuldeKeyboardType.alt") {
        if (key.coords![1] == 0) { //row1
          kWidth = deviceWidth / _keyRowsAlt[0].length;
        } else if (key.coords![1] == 1) { //row2
          kWidth = deviceWidth / _keyRowsAlt[1].length;
        } else if (key.coords![1] == 2) { //row3
          kWidth = deviceWidth / _keyRowsAlt[2].length;
        } else if (key.coords![1] == 3) { //row4
          kWidth = deviceWidth / _keyRowsAlt[3].length;
        } else if (key.coords![1] == 4) { //row5
          kWidth = deviceWidth / _keyRowsAlt[4].length;
        }
        kHeight = keyboardHeight / customLayoutKeys.newFulbeLayout.length;
        // else { //row5
        //   kWidth = 36; //*default
        // }
      }
    }

    String keyToDisplay = "";
    if (isABCEnabled) {
      //english
      if (isShiftEnabled) {
        keyToDisplay = key.latin!.toUpperCase();
      } else {
        keyToDisplay = key.latin!;
      }
    } else {
      //fulbe
      if (isShiftEnabled) {
        keyToDisplay = key.upper ?? ''; //character map for fulbe UPPERCASE
      } else {
        keyToDisplay = key.latin ?? '';
      }
    }



    OverlayEntry? overlayEntry;
    if (key.keyType == FuldeKeyboardKeyType.string) {
      Widget customWidget = isABCEnabled ? Container() : Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            //key.text ?? '',
            //key.coords.toString() ?? '',
            //isShiftEnabled ? key.latin!.toUpperCase() ?? '' : key.latin ?? '',
            keyToDisplay,
            style: const TextStyle(
              fontFamily: 'Fulde',
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
      );
      //print('Pressed key: ${key.text}');
      overlayEntry = OverlayEntry(
        builder: (BuildContext context) {
          return Positioned(
            left: key.coords![0].toDouble() * kWidth,
            bottom: keyboardHeight - ((key.coords![1].toDouble()) * kHeight),
            child: customWidget,
          );
        },
      );
      //display the pop over
      Overlay.of(context).insert(overlayEntry);
    }

    if (key.keyType == FuldeKeyboardKeyType.string) {
      textController.text += ((isShiftEnabled ? key.capsText : key.text) ?? '');
    } else if (key.keyType == FuldeKeyboardKeyType.action) {
      switch (key.action) {
        case FuldeKeyboardKeyAction.backspace:
          if (textController.text.isEmpty) return;
          textController.text =
              textController.text.substring(0, textController.text.length - 1);
          break;
        case FuldeKeyboardKeyAction.enter:
          textController.text += '\n';
          break;
        case FuldeKeyboardKeyAction.space:
          textController.text += (key.text ?? '');
          break;
        case FuldeKeyboardKeyAction.leftShift:
          break;
        case FuldeKeyboardKeyAction.rightShift:
          break;
        case FuldeKeyboardKeyAction.alt:
          break;
        default:
      }
    }

    onKeyPress?.call(key);
    // remove the pop over widget
    if (key.keyType == FuldeKeyboardKeyType.string) {
      Future.delayed(const Duration(milliseconds: 800), () {
        overlayEntry!.remove();
      });
    }
  }

  @override
  dispose() {
    if (widget.textController == null) // dispose if created locally only
        {
      textController.dispose();
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(FuldeKeyboard oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      type = widget.type;
      builder = widget.builder;
      onKeyPress = widget.onKeyPress;
      height = widget.height;
      width = widget.width;
      textColor = widget.textColor;
      fontSize = widget.fontSize;
      alwaysCaps = widget.alwaysCaps;
      reverseLayout = widget.reverseLayout;
      textController = widget.textController ?? textController;
      customLayoutKeys = widget.customLayoutKeys ?? customLayoutKeys;
      // Init the Text Style for keys.
      textStyle = TextStyle(
        fontFamily: 'Fulde',
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: textColor,
      );
    });
  }

  @override
  void initState() {
    super.initState();

    textController = widget.textController ?? TextEditingController();
    width = widget.width;
    type = widget.type;
    customLayoutKeys = widget.customLayoutKeys ??
        VirtualKeyboardDefaultLayoutKeys(
            widget.defaultLayouts ?? [FuldeKeyboardDefaultLayouts.english]);
    builder = widget.builder;
    onKeyPress = widget.onKeyPress;
    height = widget.height;
    textColor = widget.textColor;
    fontSize = widget.fontSize;
    alwaysCaps = widget.alwaysCaps;
    reverseLayout = widget.reverseLayout;
    // Init the Text Style for keys.
    textStyle = TextStyle(
      fontFamily: 'Fulde',
      fontWeight: FontWeight.w100,
      fontSize: fontSize,
      color: textColor,
    );
  }

// TextStyle(
//   fontFamily: 'Fulde',
//   fontWeight: FontWeight.bold,
//   fontSize: fontSize,
//   color: textColor,
//   decoration: TextDecoration.none,
//   decorationColor: textColor,
// );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: height,
      width: width ?? MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _rows(),
      ),
    );
  }

  /// Returns the rows for keyboard.
  List<Widget> _rows() {
    // Get the keyboard Rows
    late List<List<FuldeKeyboardKey>> keyboardRows;

    if (type == FuldeKeyboardType.numeric) {
      keyboardRows = _getKeyboardRowsNumeric();
    } else if (type == FuldeKeyboardType.alt) {
      keyboardRows = _getKeyboardRowsAlt();
    } else {
      keyboardRows = _getKeyboardRowsAlphaNumeric(customLayoutKeys);
    }

    // Generate keyboard row.
    List<Widget> rows = List.generate(keyboardRows.length, (int rowNum) {
      var items = List.generate(keyboardRows[rowNum].length, (int keyNum) {
        // Get the VirtualKeyboardKey object.
        FuldeKeyboardKey virtualKeyboardKey = keyboardRows[rowNum][keyNum];

        Widget keyWidget;

        // Check if builder is specified.
        // Call builder function if specified or use default
        //  Key widgets if not.
        if (builder == null) {
          // Check the key type.
          switch (virtualKeyboardKey.keyType) {
            case FuldeKeyboardKeyType.string:
            // Draw String key.
              keyWidget = _keyboardDefaultKey(virtualKeyboardKey);
              break;
            case FuldeKeyboardKeyType.action:
            // Draw action key.
              keyWidget = _keyboardDefaultActionKey(virtualKeyboardKey);
              break;
          }
        } else {
          // Call the builder function, so the user can specify custom UI for keys.
          keyWidget = builder!(context, virtualKeyboardKey);

          // if (keyWidget == null) {
          //   throw 'builder function must return Widget';
          // }
        }

        return keyWidget;
      });

      if (reverseLayout) items = items.reversed.toList();
      return Material(
        color: const Color(0xFF0A0A0A),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              // Generate keboard keys
              children: items,
            ),
            // ?* Add lines to each row
            // const Divider(
            //   color: Colors.white38,
            //   height: 0,
            // )
          ],
        ),
      );
    });

    return rows;
  }

  // True if long press is enabled.
  bool longPress = false;

  /// Creates default UI element for keyboard Key.
  Widget _keyboardDefaultKey(FuldeKeyboardKey key) {
    return Expanded(
        child: InkWell(
          onTap: () {
            _onKeyPress(key);
          },
          child: SizedBox(
            height: height / customLayoutKeys.activeLayout.length,
            child: Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: const Color(0xFF222222),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                  child: Text(
                    alwaysCaps
                        ? key.capsText ?? ''
                        : (isShiftEnabled ? key.capsText : key.text) ?? '',
                    style: textStyle,
                  )),
            ),
          ),
        ));
  }

  /// Creates default UI element for keyboard Action Key.
  Widget _keyboardDefaultActionKey(FuldeKeyboardKey key) {
    // Holds the action key widget.
    Widget? actionKey;

    // Switch the action type to build action Key widget.
    switch (key.action ?? FuldeKeyboardKeyAction.switchLanguage) {
      case FuldeKeyboardKeyAction.backspace:
        actionKey = GestureDetector(
            onLongPress: () {
              longPress = true;
              // Start sending backspace key events while longPress is true
              Timer.periodic(
                  const Duration(
                      milliseconds: _virtualKeyboardBackspaceEventPeriod),
                      (timer) {
                    if (longPress) {
                      _onKeyPress(key);
                    } else {
                      // Cancel timer.
                      timer.cancel();
                    }
                  });
            },
            onLongPressUp: () {
              // Cancel event loop
              longPress = false;
            },
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Icon(
                CupertinoIcons.delete_left_fill,
                color: textColor,
              ),
            ));
        break;
      case FuldeKeyboardKeyAction.leftShift:
        actionKey = SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(
              customLayoutKeys.activeIndex == 0 ? '\u21E7' : '\u21E7',
              style: textStyle,
            ),
          ),
        );
        break;
      case FuldeKeyboardKeyAction.rightShift:
        actionKey = SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(
              customLayoutKeys.activeIndex == 0 ? '\u21E7' : '\u21E7',
              style: textStyle,
            ),
          ),
        );
        break;
      case FuldeKeyboardKeyAction.space:
        actionKey = SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(
              customLayoutKeys.activeIndex == 0 ? '\u0020' : 'space bar',
              style: textStyle,
            ),
          ),
        );
        break;
      case FuldeKeyboardKeyAction.enter:
        actionKey = Icon(
          Icons.keyboard_return,
          color: textColor,
        );
        break;
      case FuldeKeyboardKeyAction.alt:
        actionKey = GestureDetector(
            onTap: () {
              setState(() {
                type = FuldeKeyboardType.alt;
              });
            },
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: Text(
                  customLayoutKeys.activeIndex == 0 ? '\u2387' : '!@#',
                  style: textStyle,
                ),
              ),
            ));
        break;
      case FuldeKeyboardKeyAction.switchLanguage:
        actionKey = GestureDetector(
            onTap: () {
              setState(() {
                customLayoutKeys.switchLanguage();
                isABCEnabled = !isABCEnabled;
              });
            },
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Icon(
                Icons.language,
                color: textColor,
              ),
            ));
        break;
      case FuldeKeyboardKeyAction.switchAbc:
        actionKey = GestureDetector(
            onTap: () {
              setState(() {
                type = FuldeKeyboardType.alphanumeric;
              });
            },
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: Text(
                  'ABC',
                  style: TextStyle(color: textColor),
                ),
              ),
            ));
        break;
      case FuldeKeyboardKeyAction.switchNumberPad:
        actionKey = GestureDetector(
            onTap: () {
              setState(() {
                type = FuldeKeyboardType.numeric;
              });
            },
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: Text(
                  customLayoutKeys.activeIndex == 0
                      ? '\u0661\u0662\u0663'
                      : '123',
                  style: textStyle,
                ),
              ),
            ));
        break;
    // case FuldeKeyboardKeyAction.alpha:
    //   // TODO: Handle this case.
    //   break;
    // case FuldeKeyboardKeyAction.symbols:
    //   // TODO: Handle this case.
    //   break;
    }

    var widget = InkWell(
      onTap: () {
        if (key.action == FuldeKeyboardKeyAction.leftShift ||
            key.action == FuldeKeyboardKeyAction.rightShift) {
          if (!alwaysCaps) {
            setState(() {
              isShiftEnabled = !isShiftEnabled;
            });
          }
        }

        _onKeyPress(key);
      },
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: const Color(0xFF313131),
          borderRadius: BorderRadius.circular(4),
        ),
        alignment: Alignment.center,
        height: height / customLayoutKeys.activeLayout.length,
        child: actionKey,
      ),
    );

    if (key.action == FuldeKeyboardKeyAction.space) {
      return SizedBox(
          width: (width ?? MediaQuery.of(context).size.width) / 2,
          child: widget);
    } else {
      return Expanded(child: widget);
    }
  }
}
