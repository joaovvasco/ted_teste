import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworldflutter/telas/tela_inicial.dart';

class App extends MaterialApp {
  App({
    super.key,
    super.title,
  }) : super(
          home: const TelaInicial(),
          theme: ThemeData(
            textTheme: GoogleFonts.interTextTheme(),
          ),
          color: const Color(0xFF0FF00F),
          debugShowCheckedModeBanner: false,
        );
}
