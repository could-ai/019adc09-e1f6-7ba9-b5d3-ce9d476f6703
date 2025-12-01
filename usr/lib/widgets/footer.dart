import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.security, color: Colors.grey[600], size: 20),
              const SizedBox(width: 8),
              Text(
                'CyberGuard © 2024',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Privacidad • Términos • Seguridad',
            style: TextStyle(color: Colors.grey[800], fontSize: 12),
          ),
        ],
      ),
    );
  }
}
