import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class Divider extends StatelessWidget {
  const Divider({super.key, required int height, required int thickness, required Color color});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 1,
      color: AppColors.greyLight,
    );
  }
}
