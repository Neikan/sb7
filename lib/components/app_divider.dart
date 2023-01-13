// Flutter imports:
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final Color? color;
  final double? paddingX, paddingY;

  const AppDivider({
    super.key,
    this.color = Colors.grey,
    this.paddingY,
    this.paddingX,
  });

  @override
  Widget build(BuildContext context) {
    if (paddingX != null || paddingY != null) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: paddingX ?? 0, vertical: paddingY ?? 0),
        child: const AppDivider(),
      );
    }

    return Divider(color: color, height: 0.0);
  }
}
