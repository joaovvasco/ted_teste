import 'package:flutter/cupertino.dart';
import 'package:helloworldflutter/constantes/fontes.dart';

class Rotulo extends Text {
  final bool bold;
  final int cor;
  final double? fontSize;

  Rotulo(
    super.data, {
    super.key,
    this.bold = false,
    this.cor = 0xFF000000,
    this.fontSize,
  }) : super(
          style: TextStyle(
            fontWeight: bold ? FontWeight.w700 : FontWeight.normal,
            fontSize: fontSize ?? 16,
            fontFamily: Fonte.inter.fontFamily,
            color: Color(cor),
          ),
        );
}
