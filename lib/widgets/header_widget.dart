// lib/widgets/header_widget.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';
import '../utils/app_constants.dart';

class HeaderWidget extends StatelessWidget {
  final Function(GlobalKey) onMenuTap;
  final GlobalKey aboutKey;
  final GlobalKey skillsKey;
  final GlobalKey projectsKey;
  final GlobalKey experienceKey;
  final GlobalKey educationKey;
  final GlobalKey contactKey;

  const HeaderWidget({
    super.key,
    required this.onMenuTap,
    required this.aboutKey,
    required this.skillsKey,
    required this.projectsKey,
    required this.experienceKey,
    required this.educationKey,
    required this.contactKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: AppColors.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppConstants.appName,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            if (MediaQuery.of(context).size.width > 800)
              Row(
                children: [
                  _buildNavItem('About', () => onMenuTap(aboutKey)),
                  _buildNavItem('Skills', () => onMenuTap(skillsKey)),
                  _buildNavItem('Projects', () => onMenuTap(projectsKey)),
                  _buildNavItem('Experience', () => onMenuTap(experienceKey)),
                  _buildNavItem('Education', () => onMenuTap(educationKey)),
                  _buildNavItem('Contact', () => onMenuTap(contactKey)),
                ],
              )
            else
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => _showMobileMenu(context),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
      ),
    );
  }

  void _showMobileMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildMobileNavItem('About', () => onMenuTap(aboutKey), context),
            _buildMobileNavItem('Skills', () => onMenuTap(skillsKey), context),
            _buildMobileNavItem(
                'Projects', () => onMenuTap(projectsKey), context),
            _buildMobileNavItem(
                'Experience', () => onMenuTap(experienceKey), context),
            _buildMobileNavItem(
                'Education', () => onMenuTap(educationKey), context),
            _buildMobileNavItem(
                'Contact', () => onMenuTap(contactKey), context),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileNavItem(
      String title, VoidCallback onTap, BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
    );
  }
}
