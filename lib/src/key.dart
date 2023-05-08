part of fulde_keyboard;

/// Virtual Keyboard key
class FuldeKeyboardKey {
  String? text;
  String? capsText;
  final FuldeKeyboardKeyType keyType;
  final FuldeKeyboardKeyAction? action;
<<<<<<< HEAD
  FuldeKeyboardKey(
      {this.text, this.capsText, required this.keyType, this.action}) {
=======
  final List<int> coords;
  String? latin;

  FuldeKeyboardKey({
    this.text,
    this.capsText,
    required this.keyType,
    this.action,
    required this.coords,
    this.latin,
  }) {

    latin = "X";
    //print("text!:$text");

    /*switch(text) {
      //row 0
      case('٠'): latin = "0"; break;
      case('١'): latin = "1"; break;
      case('٢'): latin = "2"; break;
      case('٣'): latin = "3"; break;
      case('٤'): latin = "4"; break;
      case('٥'): latin = "5"; break;
      case('٦'): latin = "6"; break;
      case('٧'): latin = "7"; break;
      case('٨'): latin = "8"; break;
      case('٩'): latin = "9"; break;

      //row 1
      case('ڨ'): latin = "10"; break;
      case('ڻ'): latin = "11"; break;
      case('ڠ'): latin = "12"; break;
      case('ڳ'): latin = "13"; break;
      case('ګ'): latin = "14"; break;
      case('ڶ'): latin = "15"; break;
      case('ڢ'): latin = "16"; break;
      case('ڡ'): latin = "17"; break;
      case('ڣ'): latin = "18"; break;
      case('ڮ'): latin = "19"; break;
      case('ڽ'): latin = "1Y"; break;
      case('ڤ'): latin = "1Z"; break;

      //row 2
      case('ڟ'): latin = "20"; break;
      case('ڱ'): latin = "21"; break;
      case('ڼ'): latin = "22"; break;
      case('ڬ'): latin = "23"; break;
      case('ڰ'): latin = "24"; break;
      case('ڹ'): latin = "25"; break;
      case('ڸ'): latin = "26"; break;
      case('گ'): latin = "27"; break;
      case('ں'): latin = "28"; break;
      case('ڥ'): latin = "29"; break;
      case('ک'): latin = "2Y"; break;
      case('ڵ'): latin = "2Z"; break;

      //row 3
      case('ڷ'): latin = "30"; break;
      case('ڧ'): latin = "31"; break;
      case('ڲ'): latin = "32"; break;
      case('ڦ'): latin = "33"; break;
      case('ڪ'): latin = "34"; break;
      case('ڴ'): latin = "35"; break;
      case('ڿ'): latin = "36"; break;

    }
*/
>>>>>>> 58eec12e7d2446ecaafd597890fff0265b33cc82
    if (text == null && action != null) {
      text = action == FuldeKeyboardKeyAction.space
          ? ' '
          : (action == FuldeKeyboardKeyAction.enter ? '\n' : '');
    }
    if (capsText == null && action != null) {
      capsText = action == FuldeKeyboardKeyAction.space
          ? ' '
          : (action == FuldeKeyboardKeyAction.enter ? '\n' : '');
    }
  }
  List<int> getCoords() {
    return coords;
  }

}
