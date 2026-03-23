
import 'package:flutter/material.dart';

class PerfilSeccion extends StatelessWidget {
  const PerfilSeccion({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Netflix EALG 0624 6 I')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png',
                width: 140,
              ),
            ),
            const SizedBox(height: 20),
            const Text("EALG 0624 6 I", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("Cuenta Premium", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
