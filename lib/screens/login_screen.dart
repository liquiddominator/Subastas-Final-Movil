import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237), // Fondo gris claro
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0), // Padding más grande
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40), // Más espacio arriba
              // Título Auctio
              const Text(
                'Auctio',
                style: TextStyle(
                  color: Color.fromARGB(255, 91, 35, 180),
                  fontSize: 32, // Más grande
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              // Título Bienvenido
              const Text(
                '¡Bienvenido!',
                style: TextStyle(
                  fontSize: 30, // Más grande
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              // Subtítulo
              const Text(
                'Ingresa a tu cuenta para continuar',
                style: TextStyle(
                  fontSize: 18, // Más grande
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(133, 32, 32, 32),
                ),
              ),
              const SizedBox(height: 40),
              // Botón de Google
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color.fromARGB(255, 178, 178, 178)),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Logo de Google posicionado a la izquierda
                    Positioned(
                      left: 20,
                      child: Image.asset(
                        'assets/images/google.png',
                        height: 35,
                      ),
                    ),
                    // Texto centrado
                    const Text(
                      'Continuar con Google',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Separador "O bien"
              Row(
                children: [
                  Expanded(child: Divider(color: const Color.fromARGB(133, 32, 32, 32))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'O bien',
                      style: TextStyle(
                        color: const Color.fromARGB(133, 32, 32, 32),
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: const Color.fromARGB(133, 32, 32, 32))),
                ],
              ),
              const SizedBox(height: 40),
              // Campo de Email
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color.fromARGB(255, 178, 178, 178)),
                  borderRadius: BorderRadius.circular(16), // Más redondeado
                ),
                child: TextField(
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email_outlined, color: const Color.fromARGB(133, 21, 21, 21), size: 30),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: const Color.fromARGB(133, 21, 21, 21), fontSize: 17, fontWeight: FontWeight.w600),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Campo de Contraseña
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color.fromARGB(255, 178, 178, 178)),
                  borderRadius: BorderRadius.circular(16), // Más redondeado
                ),
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.password, color: const Color.fromARGB(133, 21, 21, 21), size: 30),
                    hintText: 'Contraseña',
                    hintStyle: TextStyle(color: const Color.fromARGB(133, 21, 21, 21), fontSize: 17, fontWeight: FontWeight.w600),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Fila de "Recordarme" y "¿Olvidaste?"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Checkbox(
                          value: false,
                          onChanged: (value) {},
                          shape: const CircleBorder(),
                          activeColor: const Color.fromARGB(255, 91, 35, 180),
                        ),
                      ),
                      const Text(
                        'Recordarme',
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(133, 21, 21, 21), fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '¿Olvidaste?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 91, 35, 180),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              // Botón Ingresar
              SizedBox(
                width: double.infinity,
                height: 56, // Más alto
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 91, 35, 180),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50), // Más redondeado
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Ingresar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Texto de registro
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿No tienes cuenta?',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text(
                      'Regístrate',
                      style: TextStyle(
                        color: Color.fromARGB(255, 91, 35, 180),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}