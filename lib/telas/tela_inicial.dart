import 'package:flutter/material.dart';
import 'package:helloworldflutter/constantes/cores.dart';
import 'package:helloworldflutter/constantes/fontes.dart';
import 'package:helloworldflutter/core/botao.dart';
import 'package:helloworldflutter/core/rotulo.dart';
import 'package:helloworldflutter/telas/formulario.dart';
import 'package:helloworldflutter/telas/teste.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFDD6B20), shape: BoxShape.circle),
                    padding: const EdgeInsets.all(8.33),
                    margin: const EdgeInsets.only(right: 8.67),
                    child: Rotulo(
                      "!",
                      bold: true,
                      cor: 0xFFFFFFFF,
                      fontSize: 14,
                    ),
                  ),
                  Rotulo(
                    "Ops!",
                    bold: true,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Rotulo("Você não tem TED's agendados"),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Botao(
                nome: "Agendar TED",
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FormularioTED(),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
