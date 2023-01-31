import 'package:flutter/material.dart';
import 'package:helloworldflutter/constantes/cores.dart';
import 'package:helloworldflutter/constantes/fontes.dart';

class Botao extends ElevatedButton {
  final int? cor;
  final String? nome;
  final double? height;

  Botao({super.key, VoidCallback? onPressed, this.nome, this.cor, this.height})
      : super(
          onPressed: onPressed ?? () {},
          child: Text(nome ?? ""),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(cor ?? Cores.botaoVerde),
            ),
            fixedSize: MaterialStateProperty.all<Size>(
                Size.fromHeight(height ?? 48.0)),
            textStyle: MaterialStateProperty.all(
              TextStyle(
                  fontSize: 16,
                  fontFamily: Fonte.inter.fontFamily,
                  fontWeight: FontWeight.w600),
            ),
          ),
        );
}
