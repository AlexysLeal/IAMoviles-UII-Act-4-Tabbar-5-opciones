
import 'package:flutter/material.dart';
import 'package:myapp/mis_paginas_tab/contenido_seccion.dart';

class InicioSeccion extends StatelessWidget {
  const InicioSeccion({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContenidoSeccion(
      titulo: 'Netflix EALG 0624 6 I',
      subtitulo: 'BIENVENIDO',
      url: 'https://static.vecteezy.com/system/resources/previews/022/101/069/non_2x/netflix-logo-transparent-free-png.png',
      esLogo: true,
    );
  }
}
