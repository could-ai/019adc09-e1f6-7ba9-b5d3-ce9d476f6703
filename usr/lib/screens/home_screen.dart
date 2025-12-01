import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/hero_section.dart';
import 'package:couldai_user_app/widgets/services_section.dart';
import 'package:couldai_user_app/widgets/contact_section.dart';
import 'package:couldai_user_app/widgets/footer.dart';
import 'package:couldai_user_app/widgets/custom_nav_bar.dart';
import 'package:couldai_user_app/widgets/stats_section.dart';
import 'package:couldai_user_app/widgets/features_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050505),
      body: Column(
        children: [
          const CustomNavBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  HeroSection(),
                  StatsSection(),
                  FeaturesSection(),
                  ServicesSection(),
                  ContactSection(),
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
