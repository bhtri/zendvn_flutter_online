import 'package:flutter/material.dart';

extension ColorEx on Color {
  // https://stackoverflow.com/a/55539211/6284714
  static Color fromHex(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }
}
