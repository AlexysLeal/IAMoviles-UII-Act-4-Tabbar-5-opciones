
import 'package:flutter/material.dart';
import 'package:myapp/mis_paginas_tab/contenido_seccion.dart';

class SeriesSeccion extends StatelessWidget {
  const SeriesSeccion({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContenidoSeccion(
      titulo: 'SERIES TV',
      subtitulo: 'Lo más visto',
      url: 'https://m.media-amazon.com/images/M/MV5BMjEzMDAxOTUyMV5BMl5BanBnXkFtZTgwNzAxMzYzOTE@._V1_.jpg',
      esLogo: false,
    );
  }
}
