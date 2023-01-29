// ignore_for_file: unnecessary_string_escapes

class FormatadorCPF {
  static String formatar(String cpf) {
    return cpf.replaceAll("\d{3}\d{3}\d{3}\d{2}", "\$1.\$2.\$3-\$4");
  }
}

extension StringExtensao on String {
  String somenteNumeros() {
    return replaceAll("\D", "");
  }
}
