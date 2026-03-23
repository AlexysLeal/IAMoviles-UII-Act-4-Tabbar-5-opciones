
import 'package:flutter/material.dart';

class AjustesSeccion extends StatelessWidget {
  const AjustesSeccion({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CONFIGURACIÓN')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.tune, size: 160, color: Colors.white10),
            SizedBox(height: 20),
            Text("Preferencias del Sistema", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
