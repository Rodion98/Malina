import 'package:flutter/material.dart';
import 'package:malina_app/core/app/io_ui.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String text;
  final String textLabel;

  const CardWidget({
    super.key,
    required this.image,
    required this.text,
    required this.textLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.pinkLight,
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            style: AppTextStyle.text22,
            textLabel,
            maxLines: 2,
            overflow: TextOverflow.visible,
            softWrap: true,
          ),
          Text(
            style: AppTextStyle.text16.copyWith(color: Colors.black),
            text,
            maxLines: 2,
            overflow: TextOverflow.visible,
            softWrap: true,
          )
        ],
      ),
    );
  }
}
