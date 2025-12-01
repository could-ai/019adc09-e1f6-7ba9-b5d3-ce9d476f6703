import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF0A0E14),
            const Color(0xFF111B29),
          ],
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.shield_moon,
            size: 100,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
          ),
          const SizedBox(height: 30),
          Text(
            'PROTEGE TU INFRAESTRUCTURA DIGITAL',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: size.width > 600 ? 48 : 32,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Text(
              'Soluciones de ciberseguridad de vanguardia para detectar, prevenir y responder a amenazas en tiempo real. Tu seguridad es nuestra prioridad.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 18,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.rocket_launch),
                label: const Text('Empezar Ahora'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.play_circle_outline),
                label: const Text('Ver Demo'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  side: BorderSide(color: Theme.of(context).colorScheme.primary),
                  foregroundColor: Theme.of(context).colorScheme.primary,
                  textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
