import 'package:flutter/material.dart';
import 'package:fulde_keyboard/fulde_keyboard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Fulde Keyboard Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Fulde Keyboard Demo',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Holds the text that user typed.
  String text = '';
  // CustomLayoutKeys _customLayoutKeys;
  // True if shift enabled.
  bool shiftEnabled = false;

  // is true will show the numeric keyboard.
  bool isNumericMode = false;
  bool isAltMode = false;
  late TextEditingController _controllerText;

  @override
  void initState() {
    // _customLayoutKeys = CustomLayoutKeys();
    _controllerText = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontFamily: 'Fulde', fontSize: 40.0),
            ),
            Text(
              _controllerText.text,
              style: const TextStyle(
                  color: Colors.red, fontSize: 40.0, fontFamily: 'Fulde'),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              color: const Color(0xFF28282B),
              child: FuldeKeyboard(
                height: 200,
                // width: 100,
                textColor: Colors.white,
                textController: _controllerText,
                //customLayoutKeys: _customLayoutKeys,
                defaultLayouts: const [
                  FuldeKeyboardDefaultLayouts.fulde,
                  FuldeKeyboardDefaultLayouts.latin,
                  FuldeKeyboardDefaultLayouts.english
                ],
                //reverseLayout :true,
                type: FuldeKeyboardType.alphanumeric,
                onKeyPress: _onKeyPress,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Fired when the virtual keyboard key is pressed.
  _onKeyPress(FuldeKeyboardKey key) {
    if (key.keyType == FuldeKeyboardKeyType.string) {
      text = text + (shiftEnabled ? key.capsText : key.text).toString();
      // print('Key pressed at x:${key.coords[0]}, y:${key.coords[1]}');
    } else if (key.keyType == FuldeKeyboardKeyType.action) {
      switch (key.action) {
        case FuldeKeyboardKeyAction.backspace:
          if (text.isEmpty) return;
          text = text.substring(0, text.length - 1);
          break;
        case FuldeKeyboardKeyAction.enter:
          text = '$text\n';
          break;
        case FuldeKeyboardKeyAction.space:
          text = text + key.text.toString();
          break;
        case FuldeKeyboardKeyAction.leftShift:
          shiftEnabled = !shiftEnabled;
          break;
        case FuldeKeyboardKeyAction.rightShift:
          shiftEnabled = !shiftEnabled;
          break;
        default:
      }
    }
    // Update the screen
    setState(() {});
  }
}
