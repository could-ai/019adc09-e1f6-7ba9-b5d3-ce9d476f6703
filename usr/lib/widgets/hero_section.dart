import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 900;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 40),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1550751827-4bd374c3f58b?q=80&w=2070&auto=format&fit=crop'),
          fit: BoxFit.cover,
          opacity: 0.1,
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF050505),
            const Color(0xFF0A0E14).withOpacity(0.95),
            const Color(0xFF111B29).withOpacity(0.9),
          ],
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Flex(
            direction: isDesktop ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left Content
              Expanded(
                flex: isDesktop ? 5 : 0,
                child: Column(
                  crossAxisAlignment: isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                      ),
                      child: Text(
                        'V 2.0 • SISTEMA DE DEFENSA ACTIVO',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'SEGURIDAD\nINQUEBRANTABLE',
                      textAlign: isDesktop ? TextAlign.start : TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: size.width > 600 ? 64 : 42,
                        fontWeight: FontWeight.w900,
                        height: 1.1,
                        letterSpacing: -1.5,
                        shadows: [
                          Shadow(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                            blurRadius: 20,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Protegemos tu infraestructura digital con IA avanzada y monitoreo en tiempo real. Detectamos amenazas antes de que ocurran.',
                      textAlign: isDesktop ? TextAlign.start : TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 18,
                        height: 1.6,
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      alignment: isDesktop ? WrapAlignment.start : WrapAlignment.center,
                      children: [
                        _GlowButton(
                          text: 'INICIAR ANÁLISIS',
                          icon: Icons.radar,
                          onPressed: () {},
                        ),
                        _OutlineButton(
                          text: 'VER DEMOSTRACIÓN',
                          icon: Icons.play_arrow,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              if (isDesktop) const SizedBox(width: 60),
              if (!isDesktop) const SizedBox(height: 60),

              // Right Content (Visual Element)
              Expanded(
                flex: isDesktop ? 4 : 0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).colorScheme.primary,
                        Theme.of(context).colorScheme.secondary,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                        blurRadius: 30,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F1115),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        // Terminal Header
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.white10)),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.circle, size: 12, color: Colors.red),
                              const SizedBox(width: 8),
                              const Icon(Icons.circle, size: 12, color: Colors.yellow),
                              const SizedBox(width: 8),
                              const Icon(Icons.circle, size: 12, color: Colors.green),
                              const Spacer(),
                              Text(
                                'root@cyberguard:~',
                                style: TextStyle(
                                  fontFamily: 'monospace',
                                  color: Colors.grey[500],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Terminal Body
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _TerminalLine(text: '> inicializando protocolo de defensa...', color: Colors.greenAccent),
                              _TerminalLine(text: '> escaneando puertos [22, 80, 443]...', delay: 1),
                              _TerminalLine(text: '> amenaza detectada: IP 192.168.x.x', color: Colors.redAccent, delay: 2),
                              _TerminalLine(text: '> firewall activado', delay: 3),
                              _TerminalLine(text: '> neutralizando amenaza...', color: Colors.orangeAccent, delay: 4),
                              _TerminalLine(text: '> SISTEMA SEGURO', color: Theme.of(context).colorScheme.primary, isBold: true, delay: 5),
                              const SizedBox(height: 10),
                              Container(
                                width: 10,
                                height: 20,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TerminalLine extends StatelessWidget {
  final String text;
  final Color? color;
  final bool isBold;
  final int delay;

  const _TerminalLine({
    required this.text,
    this.color,
    this.isBold = false,
    this.delay = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'monospace',
          color: color ?? Colors.grey[300],
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          fontSize: 14,
        ),
      ),
    );
  }
}

class _GlowButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const _GlowButton({required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 22),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const _OutlineButton({required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 20),
      label: Text(text),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white30, width: 2),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 22),
        textStyle: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
