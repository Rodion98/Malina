import 'package:flutter/material.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/gen/strings.g.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.greyLight,
      title: Text(
        t.basket,
        style: AppTextStyle.text20,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {},
            child: const Text(
              'Очистить',
              style: AppTextStyle.text14grey,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
