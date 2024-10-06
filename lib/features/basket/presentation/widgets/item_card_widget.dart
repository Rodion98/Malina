import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/features/basket/presentation/basket_content.dart';
import 'package:malina_app/features/basket/presentation/widgets/plus_minus_widget.dart';
import 'package:malina_app/gen/assets.gen.dart';

class ItemCardWidget extends StatelessWidget {
  final BasketType type;
  final String label;
  final String description;
  final int price;
  final String image;
  final int totalPrice;
  final int count;
  final Function() onTapAdd;
  final Function() onTapDelete;

  const ItemCardWidget({
    super.key,
    required this.label,
    required this.description,
    required this.price,
    required this.image,
    required this.totalPrice,
    required this.count,
    required this.onTapAdd,
    required this.onTapDelete,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              _buildImage(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLabelAndPrice(),
                    Text(
                      description,
                      style: AppTextStyle.text12,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    _buildCountButtons(count),
                  ],
                ),
              )
            ],
          ),
          type == BasketType.food ? _buildSupplementButton() : const SizedBox.shrink(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Column _buildSupplementButton() {
    return Column(
      children: [
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(
              0xFFF8F8F8,
            ),
          ),
          child: Row(
            children: [
              const Icon(
                size: 30,
                Icons.add_circle_outline,
                color: AppColors.green,
              ),
              const SizedBox(width: 8),
              Text(
                'Добавки',
                style: AppTextStyle.text16.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Row _buildCountButtons(int count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            PlusMinusButtonsWidgets(
              onTap: onTapDelete,
              icon: Icons.remove,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 11.5,
              ),
              child: Text(
                count.toString(),
                style: AppTextStyle.text18.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            PlusMinusButtonsWidgets(
              icon: Icons.add,
              onTap: onTapAdd,
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            Assets.icons.delete,
          ),
        )
      ],
    );
  }

  Row _buildLabelAndPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            label,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: AppTextStyle.text16.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              price.toString(),
              style: AppTextStyle.text16.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 14,
              child: SvgPicture.asset(Assets.icons.somSign),
            ),
          ],
        ),
      ],
    );
  }

  Container _buildImage() {
    return Container(
      margin: const EdgeInsets.only(right: 9),
      height: 110,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        color: const Color(0xFFF8F8F8),
      ),
    );
  }
}
