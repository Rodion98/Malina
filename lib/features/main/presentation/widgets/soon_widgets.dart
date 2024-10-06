import 'package:flutter/material.dart';
import 'package:malina_app/core/app/io_ui.dart';

class SoonWidget extends StatelessWidget {
  final Color color;
  final String text;

  const SoonWidget({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 4),
      height: 86,
      width: 86,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            style: AppTextStyle.text12,
            text,
            maxLines: 2,
            overflow: TextOverflow.visible,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
