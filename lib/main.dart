
import 'package:flutter/material.dart';
import 'package:myapp/mis_paginas_tab/ajustes_seccion.dart';
import 'package:myapp/mis_paginas_tab/inicio_seccion.dart';
import 'package:myapp/mis_paginas_tab/peliculas_seccion.dart';
import 'package:myapp/mis_paginas_tab/perfil_seccion.dart';
import 'package:myapp/mis_paginas_tab/series_seccion.dart';

void main() => runApp(const MiNegocioApp());

class MiNegocioApp extends StatelessWidget {
  const MiNegocioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix EALG 0624 6 I',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color(0xFFE50914),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaPrincipal(),
      },
    );
  }
}

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _indexSeleccionado = 0;

  final List<Widget> _paginas = [
    const InicioSeccion(),
    const PeliculasSeccion(),
    const SeriesSeccion(),
    const PerfilSeccion(),
    const AjustesSeccion(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_indexSeleccionado],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexSeleccionado,
        onTap: (index) => setState(() => _indexSeleccionado = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: const Color(0xFFE50914),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.movie_filter), label: 'Cine'),
          BottomNavigationBarItem(icon: Icon(Icons.slideshow), label: 'Series'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
        ],
      ),
    );
  }
}
