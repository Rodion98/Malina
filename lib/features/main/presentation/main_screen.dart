import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/features/main/presentation/widgets/card_widget.dart';
import 'package:malina_app/features/main/presentation/widgets/scan_container.dart';
import 'package:malina_app/features/main/presentation/widgets/search_widget.dart';
import 'package:malina_app/features/main/presentation/widgets/soon_widgets.dart';
import 'package:malina_app/gen/assets.gen.dart';
import 'package:malina_app/gen/strings.g.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<SoonWidgetsData> soonWidgetsDataList = [
    SoonWidgetsData(color: AppColors.blueLight, text: t.vacations),
    SoonWidgetsData(color: AppColors.beige, text: t.market),
    SoonWidgetsData(color: AppColors.pinkLight, text: t.flowers),
    SoonWidgetsData(color: AppColors.greenLight, text: t.food),
  ];

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              SearchWidget(searchController: searchController),
              const SizedBox(height: 20),
              const ScanContainerWidget(),
              const SizedBox(height: 20),
              CardWidget(
                image: Assets.images.food.path,
                text: t.fromCafeAndRest,
                textLabel: t.food,
              ),
              const SizedBox(height: 20),
              CardWidget(
                image: Assets.images.image1826.path,
                text: t.SaloBeaty,
                textLabel: t.beauty,
              ),
              const SizedBox(height: 30),
              Text(t.soon, style: AppTextStyle.text17),
              const SizedBox(height: 10),
              _buildWidgetsList(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _buildWidgetsList() {
    return SizedBox(
      height: 86,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: soonWidgetsDataList
            .map(
              (data) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SoonWidget(
                  color: data.color,
                  text: data.text,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class SoonWidgetsData {
  final Color color;
  final String text;

  SoonWidgetsData({
    required this.color,
    required this.text,
  });
}
