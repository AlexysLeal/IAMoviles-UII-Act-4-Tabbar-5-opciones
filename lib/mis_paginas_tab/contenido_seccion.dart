
import 'package:flutter/material.dart';

class ContenidoSeccion extends StatelessWidget {
  final String titulo, subtitulo, url;
  final bool esLogo;

  const ContenidoSeccion({super.key, required this.titulo, required this.subtitulo, required this.url, required this.esLogo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo, style: const TextStyle(color: Color(0xFFE50914), fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: const Color(0xFFE50914).withOpacity(0.1), blurRadius: 30)
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(esLogo ? 0 : 15),
                child: Image.network(
                  url,
                  width: esLogo ? 300 : 250,
                  height: esLogo ? 150 : 360,
                  fit: esLogo ? BoxFit.contain : BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, size: 80, color: Colors.red),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Text(subtitulo, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
          ],
        ),
      ),
    );
  }
}
