import 'package:flutter/material.dart';
import 'package:fulde_keyboard/fulde_keyboard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fulde Keyboard Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4A90E2),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'SF Pro Display',
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4A90E2),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        fontFamily: 'SF Pro Display',
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(
        title: 'Fulde Keyboard',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
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
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.surface,
              Theme.of(context).colorScheme.surface.withValues(alpha: 0.8),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      offset: const Offset(0, 2),
                      blurRadius: 8,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Type with Fulde Keyboard',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Theme.of(context)
                                .colorScheme
                                .outline
                                .withValues(alpha: 0.3),
                            width: 1,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Text(
                            text.isEmpty ? 'Start typing...' : text,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  fontFamily: 'Fulde',
                                  fontSize: 24.0,
                                  height: 1.5,
                                  color: text.isEmpty
                                      ? Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withValues(alpha: 0.6)
                                      : Theme.of(context).colorScheme.onSurface,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF1A1A1A),
                    Color(0xFF0F0F0F),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, -2),
                    blurRadius: 8,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: FuldeKeyboard(
                height: 280,
                textColor: Colors.white,
                textController: _controllerText,
                defaultLayouts: const [
                  FuldeKeyboardDefaultLayouts.fulde,
                  FuldeKeyboardDefaultLayouts.latin,
                  FuldeKeyboardDefaultLayouts.english
                ],
                type: FuldeKeyboardType.alphanumeric,
                onKeyPress: _onKeyPress,
                onTextDirectionChanged: (TextDirection value) {},
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
