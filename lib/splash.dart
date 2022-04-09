import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({required this.nextScreen, Key? key}) : super(key: key);

  final Widget nextScreen;

  @override
  Widget build(BuildContext context) {
    final curScaleFactor = MediaQuery.of(context).textScaleFactor;

    return AnimatedSplashScreen(
      splash: Text(
        "Anlyzer",
        style: TextStyle(
          fontSize: (35 * curScaleFactor),
          color: Colors.white,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.bold,
        ),
      ),
      nextScreen: nextScreen,
      backgroundColor: const Color.fromARGB(255, 35, 151, 243),
      splashTransition: SplashTransition.fadeTransition,
      duration: 1500,
    );
  }
}
