import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        children: [
          Text(
            'Nuestros Servicios',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Defensa integral para cada capa de tu negocio',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 50),
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: const [
                  _ServiceCard(
                    icon: Icons.lock_outline,
                    title: 'Hacking Ético',
                    description: 'Simulamos ataques reales para identificar vulnerabilidades antes que los criminales.',
                  ),
                  _ServiceCard(
                    icon: Icons.cloud_done,
                    title: 'Seguridad Cloud',
                    description: 'Protección robusta para tus infraestructuras en AWS, Azure y Google Cloud.',
                  ),
                  _ServiceCard(
                    icon: Icons.bug_report,
                    title: 'Análisis de Malware',
                    description: 'Detección y neutralización de software malicioso avanzado y ransomware.',
                  ),
                  _ServiceCard(
                    icon: Icons.school,
                    title: 'Formación',
                    description: 'Capacitación a empleados para prevenir ingeniería social y phishing.',
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Theme.of(context).colorScheme.primary, size: 30),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(color: Colors.white70, height: 1.5),
          ),
        ],
      ),
    );
  }
}
