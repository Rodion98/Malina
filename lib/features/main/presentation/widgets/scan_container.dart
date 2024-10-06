import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/core/app/router/app_routes.dart';
import 'package:malina_app/gen/assets.gen.dart';
import 'package:malina_app/gen/strings.g.dart';

class ScanContainerWidget extends StatelessWidget {
  const ScanContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(const QRViewRoute());
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.pink,
        ),
        child: Row(
          children: [
            Image.asset(Assets.images.frame.path),
            const SizedBox(width: 17),
            Expanded(
              child: Text(
                style: AppTextStyle.text16,
                t.scan,
                maxLines: 2,
                overflow: TextOverflow.visible,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
