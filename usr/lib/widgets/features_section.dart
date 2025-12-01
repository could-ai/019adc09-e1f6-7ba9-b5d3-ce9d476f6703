import 'package:flutter/material.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      color: const Color(0xFF0A0E14),
      child: Column(
        children: [
          const Text(
            'POR QUÉ ELEGIRNOS',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Tecnología de Grado Militar',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 80),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              children: [
                _FeatureRow(
                  imageAlignRight: true,
                  icon: Icons.psychology,
                  title: 'Inteligencia Artificial Predictiva',
                  description: 'Nuestros algoritmos de aprendizaje profundo analizan patrones de tráfico en tiempo real para predecir y bloquear ataques antes de que se ejecuten. No esperamos a que ocurra el problema, lo anticipamos.',
                ),
                const SizedBox(height: 80),
                _FeatureRow(
                  imageAlignRight: false,
                  icon: Icons.speed,
                  title: 'Respuesta en Milisegundos',
                  description: 'En ciberseguridad, cada segundo cuenta. Nuestra infraestructura automatizada responde a incidentes en menos de 50ms, aislando nodos comprometidos y protegiendo el resto de la red instantáneamente.',
                ),
                const SizedBox(height: 80),
                _FeatureRow(
                  imageAlignRight: true,
                  icon: Icons.lock_outline,
                  title: 'Encriptación Cuántica',
                  description: 'Preparamos tu empresa para el futuro. Utilizamos estándares de encriptación resistentes a computación cuántica para asegurar que tus datos permanezcan privados hoy y dentro de 10 años.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureRow extends StatelessWidget {
  final bool imageAlignRight;
  final IconData icon;
  final String title;
  final String description;

  const _FeatureRow({
    required this.imageAlignRight,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    List<Widget> children = [
      // Text Content
      Expanded(
        flex: isMobile ? 0 : 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: 36, color: Theme.of(context).colorScheme.secondary),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
      if (!isMobile) const SizedBox(width: 60),
      // Visual Representation
      if (!isMobile)
        Expanded(
          flex: 1,
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              color: const Color(0xFF161B22),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFF161B22),
                  const Color(0xFF0D1117),
                ],
              ),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 100,
                color: Colors.white.withOpacity(0.05),
              ),
            ),
          ),
        ),
    ];

    if (imageAlignRight && !isMobile) {
      // Keep order
    } else if (!isMobile) {
      children = children.reversed.toList();
    }

    return Flex(
      direction: isMobile ? Axis.vertical : Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
