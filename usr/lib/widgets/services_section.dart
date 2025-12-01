import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      color: const Color(0xFF0D1117),
      child: Column(
        children: [
          Text(
            'NUESTROS SERVICIOS',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Defensa Integral 360°',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 60),
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 30,
                runSpacing: 30,
                alignment: WrapAlignment.center,
                children: const [
                  _ServiceCard(
                    icon: Icons.security,
                    title: 'Pentesting Avanzado',
                    description: 'Auditorías de intrusión manuales y automatizadas para blindar tus sistemas.',
                    color: Color(0xFF00E676),
                  ),
                  _ServiceCard(
                    icon: Icons.cloud_shield,
                    title: 'Seguridad Cloud',
                    description: 'Arquitectura segura para AWS, Azure y GCP con cumplimiento normativo.',
                    color: Color(0xFF00B0FF),
                  ),
                  _ServiceCard(
                    icon: Icons.bug_report,
                    title: 'Análisis de Malware',
                    description: 'Ingeniería inversa para detectar y neutralizar amenazas de día cero.',
                    color: Color(0xFFFF5252),
                  ),
                  _ServiceCard(
                    icon: Icons.lock_person,
                    title: 'Gestión de Identidad',
                    description: 'Implementación de Zero Trust y autenticación biométrica multifactor.',
                    color: Color(0xFFFFAB40),
                  ),
                  _ServiceCard(
                    icon: Icons.data_usage,
                    title: 'Forense Digital',
                    description: 'Recuperación de datos y rastreo de ataques para procesos legales.',
                    color: Color(0xFFE040FB),
                  ),
                  _ServiceCard(
                    icon: Icons.school,
                    title: 'Awareness Training',
                    description: 'Capacitación gamificada para convertir a tus empleados en el primer firewall.',
                    color: Color(0xFF69F0AE),
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
  final Color color;

  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 280,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: const Color(0xFF161B22),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 32),
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: TextStyle(
              color: Colors.grey[400],
              height: 1.6,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
