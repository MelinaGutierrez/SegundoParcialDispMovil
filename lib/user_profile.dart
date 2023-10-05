import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  final String userImageURL;
  final String userNick;
  final String userEmail;

  UserProfileScreen({
    required this.userImageURL,
    required this.userNick,
    required this.userEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Center(
              child: Image.network(
                'https://hips.hearstapps.com/es.h-cdn.co/fotoes/images/peliculas-para-ninos-cine-infantil/winnie-the-pooh-en-realidad-era-hembra/christopher/116837976-1-esl-ES/Christopher.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: Text('Nick: $userNick'),
            ),
            ListTile(
              title: Text('Correo: $userEmail'),
            ),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para editar el perfil del usuario
              },
              child: const Text('Editar Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
