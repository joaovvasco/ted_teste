import 'package:flutter/material.dart';
import 'package:helloworldflutter/constantes/cores.dart';
import 'package:helloworldflutter/constantes/fontes.dart';

class FormularioTED extends StatelessWidget {
  const FormularioTED({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("imagens/dinheiro.png"),
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
            Text(
              "Dados da Ted",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: Fonte.inter.fontFamily,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        toolbarHeight: 200,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: ListView(
          primary: false,
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
          children: const <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Código do banco",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Agência",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Conta",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "CPF",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Valor",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Data",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
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
              onPressed: () => {Navigator.pop(context)},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(Cores.botaoVerde)),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size.fromHeight(48)),
              ),
              child: const Text("Revisar"),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 4.5)),
            ElevatedButton(
              onPressed: () => {Navigator.pop(context)},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(Cores.botaoCinza)),
                textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size.fromHeight(48)),
              ),
              child: const Text("Voltar"),
            ),
          ],
        ),
      ),
    );
  }
}
