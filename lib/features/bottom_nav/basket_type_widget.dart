import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina_app/core/app/io_ui.dart';

class BasketTypeWidget extends StatelessWidget {
  final String icon;
  final String text;
  final void Function()? onTap;

  const BasketTypeWidget({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.greyLight,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: 24,
                width: 24,
              ),
              const SizedBox(height: 2),
              Text(
                text,
                style: AppTextStyle.text10,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
