import 'package:flutter/material.dart';
import '../../theme/theme.dart';

enum ButtonType { primary, secondary }

///
/// BibCard rendering for the whole application (without icon)
///
class BibCard extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonType type;

  const BibCard({
    super.key,
    required this.text,
    required this.onPressed,
    this.type = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    // Define styles based on the button type
    Color backgroundColor =
        type == ButtonType.primary ? AppColors.primary : AppColors.white;

    BorderSide border =
        type == ButtonType.primary
            ? BorderSide.none
            : BorderSide(color: AppColors.greyLight, width: 2);

    Color textColor =
        type == ButtonType.primary ? AppColors.white : AppColors.primary;

    // Render the button
    return SizedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Spacings.radius),
          ),
          side: border,
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyles.button.copyWith(color: textColor)),
      ),
    );
  }
}
