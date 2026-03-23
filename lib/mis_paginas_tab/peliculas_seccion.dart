
import 'package:flutter/material.dart';
import 'package:myapp/mis_paginas_tab/contenido_seccion.dart';

class PeliculasSeccion extends StatelessWidget {
  const PeliculasSeccion({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContenidoSeccion(
      titulo: 'PELÍCULAS',
      subtitulo: 'Tendencias en Cine',
      url: 'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_.jpg',
      esLogo: false,
    );
  }
}
