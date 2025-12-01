import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberGuard - Ciberseguridad',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00E676), // Neon Green
          secondary: Color(0xFF00B0FF), // Neon Blue
          surface: Color(0xFF1E1E1E),
          background: Color(0xFF121212),
          onPrimary: Colors.black,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E14),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          displayMedium: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white70),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
