import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color color;
  final double thickness;

  const CustomDivider({
    super.key,
    this.color = Colors.grey,
    this.thickness = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Разделитель',
      child: Padding(
        padding: const EdgeInsets.only(left: 115, right: 16),
        child: Divider(
          color: color,
          thickness: thickness,
        ),
      ),
    );
  }
}
