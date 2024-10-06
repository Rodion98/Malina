import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/gen/assets.gen.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController searchController;

  const SearchWidget({
    super.key,
    required this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.icons.search,
          ),
          Expanded(
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                hintText: 'Искать в Malina',
                border: InputBorder.none,
              ),
              style: AppTextStyle.text14grey,
            ),
          ),
        ],
      ),
    );
  }
}
