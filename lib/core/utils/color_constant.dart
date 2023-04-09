import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray50 = fromHex('#eaeaef');

  static Color blueGray300 = fromHex('#a5a5ba');

  static Color blueGray600 = fromHex('#666687');

  static Color indigo50 = fromHex('#ebeaf2');

  static Color gray60019 = fromHex('#19717171');

  static Color blueGray60001 = fromHex('#615793');

  static Color blueGray9000a = fromHex('#0a323247');

  static Color orange400 = fromHex('#ffb01d');

  static Color gray300 = fromHex('#dcdce4');

  static Color blueGray30001 = fromHex('#8e8ea9');

  static Color gray100 = fromHex('#f6f6f9');

  static Color blueGray7004c = fromHex('#4c4a4a6a');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color yellow900 = fromHex('#ff7b2c');

  static Color blueGray800 = fromHex('#32324d');

  static Color blueGray700 = fromHex('#4a4a6a');

  static Color deepOrange200 = fromHex('#ffb080');

  static Color blueGray900 = fromHex('#2b2b44');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
