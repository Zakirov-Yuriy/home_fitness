// divider_widget.dart

import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 115, right: 16),
      child: Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    );
  }
}
