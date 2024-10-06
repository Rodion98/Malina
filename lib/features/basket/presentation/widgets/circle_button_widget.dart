import 'package:flutter/material.dart';
import 'package:malina_app/core/app/io_ui.dart';

class CircleButtonWidget extends StatefulWidget {
  final String text;
  final VoidCallback? onTap;
  final bool isSelected;

  const CircleButtonWidget({
    super.key,
    required this.text,
    this.onTap,
    this.isSelected = false,
  });

  @override
  State<CircleButtonWidget> createState() => _CircleButtonWidgetState();
}

class _CircleButtonWidgetState extends State<CircleButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (state) {
            if (widget.isSelected) {
              return AppColors.pink;
            } else {
              return Colors.white;
            }
          },
        ),
        minimumSize: WidgetStateProperty.resolveWith<Size>((state) {
          return const Size(167, 40);
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (state) {
            return widget.isSelected ? Colors.white : Colors.black;
          },
        ),
        side: WidgetStateProperty.resolveWith<BorderSide>((state) {
          if (widget.isSelected) {
            return BorderSide.none;
          } else {
            return const BorderSide(
              width: 0.3,
            );
          }
        }),
      ),
      onPressed: widget.onTap,
      child: Text(
        widget.text,
      ),
    );
  }
}
