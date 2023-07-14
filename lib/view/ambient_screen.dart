import 'package:contadorwear/view/api_http.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AmbientWatchFace extends StatefulWidget {
  const AmbientWatchFace({super.key});

  @override
  State<AmbientWatchFace> createState() => _AmbientWatchFaceState();
}

class _AmbientWatchFaceState extends State<AmbientWatchFace> {
  String _currentDate = '';
  String _currentTime = '';
  String _currentMinute = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            Text(
              _currentDate.toUpperCase(),
              style: const TextStyle(
                fontSize: 14, // Tamaño de fuente
                fontWeight: FontWeight.bold, // Grosor de la fuente
                letterSpacing: 0.5,
                color: Colors.white, // Color del texto
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                _currentTime,
                style: const TextStyle(
                  fontSize: 40, // Tamaño de fuente
                  fontWeight: FontWeight.bold, // Grosor de la fuente
                  letterSpacing: 10, // Espaciado entre caracteres
                  color: Colors.white, // Color del texto
                  fontFamily: 'Gagalin', // Fuente personalizada (opcional)
                ),
              ),
            ]),
            Image.asset(
              'assets/images/adan.png',
              fit: BoxFit.cover, // Ajusta la imagen al tamaño disponible
              width: 180, 
              height: 80
            )
          ],
        ),
      ),
    );
  }
}
