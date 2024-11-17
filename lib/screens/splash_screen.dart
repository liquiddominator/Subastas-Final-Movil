import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, '/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 91, 35, 180),
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.10),
              
              Image.asset(
                'assets/images/logo.png',
                width: size.width * 0.55,
                height: size.width * 0.55,
              ),
              
              SizedBox(height: size.height * 0.04),
              
              const Text(
                'Bienvenido a',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const Text(
                'Auctio',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 91, 35, 180),
                ),
              ),
              
              SizedBox(height: size.height * 0.03),
              
              Center(
                child: SizedBox(
                  width: size.width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFeatureText(
                        'Subastas en tiempo real',
                        'Puja y gana tus artículos favoritos',
                        size,
                      ),
                      SizedBox(height: size.height * 0.03),
                      _buildFeatureText(
                        'Notificaciones instantáneas',
                        'Mantente informado de cada puja',
                        size,
                      ),
                      SizedBox(height: size.height * 0.03),
                      _buildFeatureText(
                        'Pagos seguros',
                        'Transacciones 100% protegidas',
                        size,
                      ),
                    ],
                  ),
                ),
              ),
              
              // Espacio flexible para empujar el indicador hacia abajo
              const Spacer(),
              
              // Indicador de carga
              const SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 91, 35, 180)),
                  strokeWidth: 3,
                ),
              ),
              
              // Espacio al final
              SizedBox(height: size.height * 0.07),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureText(String title, String subtitle, Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: size.width * 0.05,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: size.width * 0.04,
            fontWeight: FontWeight.bold,
            color: Colors.grey[500],
          ),
        ),
      ],
    );
  }
}