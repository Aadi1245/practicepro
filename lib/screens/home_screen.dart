// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/hero_section.dart';
import '../widgets/about_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/experience_section.dart';
import '../widgets/education_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer_widget.dart';
import '../utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _educationKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            HeaderWidget(
              onMenuTap: _scrollToSection,
              aboutKey: _aboutKey,
              skillsKey: _skillsKey,
              projectsKey: _projectsKey,
              experienceKey: _experienceKey,
              educationKey: _educationKey,
              contactKey: _contactKey,
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    const HeroSection(),
                    const SizedBox(height: 80),
                    AboutSection(key: _aboutKey),
                    const SizedBox(height: 80),
                    SkillsSection(key: _skillsKey),
                    const SizedBox(height: 80),
                    ProjectsSection(key: _projectsKey),
                    const SizedBox(height: 80),
                    ExperienceSection(key: _experienceKey),
                    const SizedBox(height: 80),
                    EducationSection(key: _educationKey),
                    const SizedBox(height: 80),
                    ContactSection(key: _contactKey),
                    const SizedBox(height: 40),
                    const FooterWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
