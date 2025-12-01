import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
        border: Border.symmetric(
          horizontal: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.2)),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Wrap(
            spacing: 60,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            children: const [
              _StatItem(number: '500+', label: 'Empresas Protegidas'),
              _StatItem(number: '99.9%', label: 'Uptime Garantizado'),
              _StatItem(number: '24/7', label: 'Monitoreo Activo'),
              _StatItem(number: '0', label: 'Brechas de Seguridad'),
            ],
          );
        },
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String number;
  final String label;

  const _StatItem({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w900,
            color: Theme.of(context).colorScheme.primary,
            shadows: [
              Shadow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                blurRadius: 15,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
