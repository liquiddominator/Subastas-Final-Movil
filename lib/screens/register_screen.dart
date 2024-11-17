import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Auctio',
                style: TextStyle(
                  color: Color.fromARGB(255, 91, 35, 180),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                '¡Regístrate!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const Text(
                'Crea una cuenta para comenzar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(133, 32, 32, 32),
                ),
              ),
              const SizedBox(height: 25),
              
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
                    Positioned(
                      left: 20,
                      child: Image.asset(
                        'assets/images/google.png',
                        height: 35,
                      ),
                    ),
                    const Text(
                      'Registrate con Google',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              
              // Separador
              Row(
                children: [
                  Expanded(child: Divider(color: const Color.fromARGB(133, 32, 32, 32))),
                  
                ],
              ),
              const SizedBox(height: 25),
              
              // Campos de formulario
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color.fromARGB(255, 178, 178, 178)),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person_outline, color: const Color.fromARGB(133, 21, 21, 21), size: 30),
                    hintText: 'Nombre Completo',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(133, 21, 21, 21),
                      fontSize: 17,
                      fontWeight: FontWeight.w600
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color.fromARGB(255, 178, 178, 178)),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person_outline, color: const Color.fromARGB(133, 21, 21, 21), size: 30),
                    hintText: 'Nombre de usuario',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(133, 21, 21, 21),
                      fontSize: 17,
                      fontWeight: FontWeight.w600
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color.fromARGB(255, 178, 178, 178)),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email_outlined, color: const Color.fromARGB(133, 21, 21, 21), size: 30),
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(133, 21, 21, 21),
                      fontSize: 17,
                      fontWeight: FontWeight.w600
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color.fromARGB(255, 178, 178, 178)),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.password, color: const Color.fromARGB(133, 21, 21, 21), size: 30),
                    hintText: 'Contraseña',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(133, 21, 21, 21),
                      fontSize: 17,
                      fontWeight: FontWeight.w600
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              
              // Botón Registrarse
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 91, 35, 180),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Texto de inicio de sesión
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿Ya tienes una cuenta?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(133, 21, 21, 21),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      'Iniciar Sesión',
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