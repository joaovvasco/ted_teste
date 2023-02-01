import 'package:flutter/cupertino.dart';

class TedVM with ChangeNotifier {
  String? _codigoBanco = "";
  String? _agencia = "0".padLeft(4, '0');
  String? _conta = "0".padLeft(10, '0');
  String? _cpf = "";
  double? _valor;
  DateTime? _data;

  String? get codigoBanco => _codigoBanco;
  String? get agencia => _agencia;
  String? get agenciaFormatada => _agencia?.padLeft(4, '0');
  String? get contaFormatada => _conta?.padLeft(10, '0');
  String? get cpf => _cpf;
  double? get valor => _valor;
  DateTime? get data => _data;

  set codigoBanco(String? codigoBanco) {
    _codigoBanco = codigoBanco;
    notifyListeners();
  }

  set agencia(String? agencia) {
    _agencia = agencia;
    notifyListeners();
  }

  set conta(String? conta) {
    _conta = conta;
    notifyListeners();
  }

  set cpf(String? cpf) {
    _cpf = cpf;
    notifyListeners();
  }

  set valor(double? valor) {
    _valor = valor;
    notifyListeners();
  }

  set data(DateTime? data) {
    _data = data;
    notifyListeners();
  }
}
