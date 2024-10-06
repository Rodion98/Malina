import 'package:flutter/material.dart';

class PlusMinusButtonsWidgets extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  const PlusMinusButtonsWidgets({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 34,
        width: 34,
        decoration: BoxDecoration(
          color: const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(
            9.44,
          ),
        ),
        child: Icon(icon),
      ),
    );
  }
}
