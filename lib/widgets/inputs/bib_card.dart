import 'package:flutter/material.dart';
import 'package:mobile_dev_race_tracker_application/theme/theme.dart';

/// Reusable custom bib_card
class BibCard extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;

  const BibCard({
    super.key,
    required this.text,
    required this.onPressed,
    this.isPrimary = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: Text(
        text,
        style: TextStyles.button.copyWith(
          color: isPrimary ? Colors.white : AppColors.primary,
        ),
      ),
      style: ElevatedButton.styleFrom(
        // minimumSize: Size(double.infinity, 48), // Full width
        padding: const EdgeInsets.symmetric(horizontal: Spacings.m),
        backgroundColor: isPrimary ? AppColors.primary : Colors.white,
        foregroundColor: isPrimary ? Colors.white : AppColors.primary,
        side:
            isPrimary ? null : BorderSide(color: AppColors.disabled, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Spacings.radiusLarge),
        ),
      ),
    );
  }
}
