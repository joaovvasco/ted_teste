import 'package:flutter/material.dart';

class Campo extends TextField {
  final String? nome;

  Campo({
    super.key,
    this.nome,
  }) : super(
          decoration: InputDecoration(
            hintText: nome,
            border: const OutlineInputBorder(),
          ),
        );
}
