import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Campo extends TextField {
  final String? nome;

  Campo({
    super.key,
    this.nome,
    TextEditingController? controller,
    TextInputType? keyboardType = TextInputType.none,
    super.onTap,
    super.onChanged,
  }) : super(
          controller: controller,
          decoration: InputDecoration(
            hintText: nome,
            border: const OutlineInputBorder(),
          ),
          keyboardType: keyboardType,
        );
}

class CampoMascarado extends StatelessWidget {
  final String mascara;
  final String? nome;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final Function()? onTap;

  const CampoMascarado({
    super.key,
    required this.mascara,
    this.nome,
    this.keyboardType,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var controller = MaskedTextController(
      mask: mascara,
    );

    String x = controller.text;

    return Campo(
      controller: controller,
      nome: nome,
      key: key,
      onChanged: onChanged,
      keyboardType: keyboardType,
    );
  }
}

class CampoData extends StatelessWidget {
  final String? nome;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const CampoData({
    super.key,
    this.nome,
    this.controller,
    this.onChanged,
  });

  Future<void> _selecionarData(BuildContext context) async {
    final data = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 30),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CampoMascarado(
      mascara: "00/00/0000",
      nome: nome,
      key: key,
      onTap: () => _selecionarData(context),
      onChanged: onChanged,
    );
  }
}
