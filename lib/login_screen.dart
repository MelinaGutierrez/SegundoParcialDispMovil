import 'package:flutter/material.dart';
import 'password_reset_screen.dart';
import 'user_profile.dart'; // Asegúrate de importar UserProfileScreen correctamente

class LoginScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Abre la pantalla de recuperación de contraseña
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasswordResetScreen(),
                  ),
                );
              },
              child: const Text('Forgot Password'),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Iniciar Sesión'),
                onPressed: () {
                  // Aquí agregarías la lógica para iniciar sesión
                  print(nameController.text);
                  print(passwordController.text);

                  // Redirecciona a UserProfileScreen al presionar el botón de inicio de sesión
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserProfileScreen(
                        userImageURL: 'URL_de_la_imagen_del_usuario',
                        userNick: 'Nombre de usuario',
                        userEmail: 'correo@example.com',
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: <Widget>[
                const Text('Ingresar con'),
                TextButton(
                  child: const Text(
                    'Facebook',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              children: <Widget>[
                const Text('Ingresar con'),
                TextButton(
                  child: const Text(
                    'Gmail',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
