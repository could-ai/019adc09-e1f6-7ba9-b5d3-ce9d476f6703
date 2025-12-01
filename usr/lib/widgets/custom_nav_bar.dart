import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.security, color: Theme.of(context).colorScheme.primary, size: 32),
              const SizedBox(width: 10),
              Text(
                'CyberGuard',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
              ),
            ],
          ),
          if (MediaQuery.of(context).size.width > 800)
            Row(
              children: [
                _NavBarItem(title: 'Servicios'),
                const SizedBox(width: 30),
                _NavBarItem(title: 'Nosotros'),
                const SizedBox(width: 30),
                _NavBarItem(title: 'Contacto'),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('Auditoría Gratis'),
                ),
              ],
            )
          else
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
