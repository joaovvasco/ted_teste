import 'package:flutter/material.dart';
import 'package:helloworldflutter/constantes/cores.dart';
import 'package:helloworldflutter/constantes/fontes.dart';
import 'package:helloworldflutter/telas/formulario.dart';

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
                    child: Text(
                      "!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: Fonte.inter.fontFamily,
                      ),
                    ),
                  ),
                  const Text(
                    "Ops!",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Você não tem TED's agendados"),
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
              ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FormularioTED(),
                    ),
                  ),
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(Cores.botaoVerde),
                  ),
                ),
                child: const Text("Agenda TED"),
              ),
            ],
          ),
        ));
  }
}
