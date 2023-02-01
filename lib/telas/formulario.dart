import 'package:flutter/material.dart';
import 'package:helloworldflutter/constantes/cores.dart';
import 'package:helloworldflutter/core/botao.dart';
import 'package:helloworldflutter/core/campo.dart';
import 'package:helloworldflutter/core/rotulo.dart';
import 'package:helloworldflutter/vm/ted.dart';

class FormularioTED extends StatefulWidget {
  const FormularioTED({super.key});

  @override
  State<StatefulWidget> createState() => _FormularioTEDState();
}

class _FormularioTEDState extends State<FormularioTED> {
  final TedVM vm = TedVM();

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
            Rotulo(
              "Dados da Ted",
              bold: true,
              fontSize: 24,
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
          children: <Widget>[
            Campo(
              nome: "Código do banco",
              keyboardType: TextInputType.number,
              onChanged: ((value) => vm.codigoBanco = value),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
            Campo(
              nome: "Agência",
              keyboardType: TextInputType.number,
              onChanged: ((value) => vm.agencia = value),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
            Campo(
              nome: "Conta",
              keyboardType: TextInputType.number,
              onChanged: ((value) => vm.conta = value),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
            CampoMascarado(
              nome: "CPF",
              mascara: "000.000.000-00",
              keyboardType: TextInputType.number,
              onChanged: (value) => vm.cpf = value,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
            Campo(
              nome: "Valor",
              keyboardType: TextInputType.number,
              onChanged: (value) => vm.valor = double.parse(value),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
            ),
            CampoData(
              nome: "Data",
              onChanged: (value) => vm.data = DateTime.parse(value),
            ),
            const Padding(
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
            Botao(
              nome: "Revisar",
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 4.5)),
            Botao(
              onPressed: () => Navigator.pop(context),
              cor: Cores.botaoCinza,
              nome: "Voltar",
            ),
          ],
        ),
      ),
    );
  }
}
