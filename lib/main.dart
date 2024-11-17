import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:subastas_movil_final/screens/login_screen.dart';
import 'package:subastas_movil_final/screens/register_screen.dart';
import 'package:subastas_movil_final/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Asegura que la barra de estado tenga el color morado
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 91, 35, 180),
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return MaterialApp(
      title: 'Auctio',
      debugShowCheckedModeBanner: false, // Quita el banner de debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 91, 35, 180),
        ),
        useMaterial3: true,
      ),
      // Definimos las rutas de la aplicación
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}