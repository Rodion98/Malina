import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/core/app/router/app_routes.dart';
import 'package:malina_app/features/basket/presentation/basket_content.dart';
import 'package:malina_app/features/bottom_nav/basket_type_widget.dart';
import 'package:malina_app/gen/assets.gen.dart';
import 'package:malina_app/gen/strings.g.dart';

@RoutePage()
class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  bool basketChoise = false;
  final List<PageRouteInfo> _buildRoutes = [
    const MainRoute(),
    const MainRoute(),
    const MainRoute(),
    BasketRoute(type: BasketType.food),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AutoTabsScaffold(
          routes: _buildRoutes,
          bottomNavigationBuilder: (_, tabsRouter) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(AppProps.kMediumBorderRadius),
                  topLeft: Radius.circular(AppProps.kMediumBorderRadius),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.20),
                  ),
                ],
              ),
              child: SizedBox(
                height: 70,
                child: Row(
                  children: _navBarsItems(
                          activeIndex: tabsRouter.activeIndex,
                          onSelectedItem: tabsRouter.setActiveIndex,
                          basketChoise: basketChoise)
                      .map((e) => Expanded(child: e))
                      .toList(),
                ),
              ),
            );
          },
        ),
        if (basketChoise) _buildBasketChoise(context)
      ],
    );
  }

  Positioned _buildBasketChoise(BuildContext context) {
    return Positioned(
      bottom: 70,
      left: MediaQuery.sizeOf(context).width - 70,
      right: 11,
      child: Container(
        padding: const EdgeInsets.all(5),
        height: 130,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black.withOpacity(0.15),
            ),
          ],
        ),
        child: Column(
          children: [
            BasketTypeWidget(
              icon: Assets.icons.cosmetic,
              text: t.items,
              onTap: () {
                AutoRouter.of(context).pushAndPopUntil(
                  BasketRoute(type: BasketType.beauty),
                  predicate: (route) => false,
                );
              },
            ),
            BasketTypeWidget(
              icon: Assets.icons.food,
              text: t.food,
              onTap: () {
                AutoRouter.of(context).pushAndPopUntil(
                  BasketRoute(type: BasketType.food),
                  predicate: (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _navBarsItems({
    required int activeIndex,
    required Function(int index) onSelectedItem,
    required bool basketChoise,
  }) {
    return [
      _buildNavItem(
        item: BottomMenuItem(
          index: 0,
          assetName: [Assets.icons.lenta],
          title: t.lenta,
        ),
        isActive: activeIndex == 0,
        onSelectedItem: onSelectedItem,
      ),
      _buildNavItem(
        item: BottomMenuItem(
          index: 1,
          assetName: [Assets.icons.favourites],
          title: t.favourites,
        ),
        isActive: activeIndex == 1,
        onSelectedItem: onSelectedItem,
      ),
      _buildCenterButton(context),
      _buildNavItem(
        item: BottomMenuItem(
          index: 2,
          assetName: [Assets.icons.profile],
          title: t.profile,
        ),
        isActive: activeIndex == 2,
        onSelectedItem: onSelectedItem,
      ),
      _buildNavItem(
          item: BottomMenuItem(
            index: 3,
            assetName: [Assets.icons.basket],
            title: t.basket,
          ),
          isActive: activeIndex == 3,
          onSelectedItem: onSelectedItem,
          basketState: basketChoise,
          changeBasket: setBasketState),
    ];
  }

  void setBasketState() {
    setState(() {
      basketChoise = !basketChoise;
    });
  }
}

Widget _buildCenterButton(BuildContext context) {
  return Container(
    height: 60,
    width: 60,
    margin: const EdgeInsets.only(top: 5),
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Color(0x59AA0D34),
          blurRadius: 14.73,
        ),
      ],
    ),
    child: FloatingActionButton(
      onPressed: () {
        AutoRouter.of(context).push(const QRViewRoute());
      },
      backgroundColor: AppColors.pink,
      shape: const CircleBorder(),
      child: SvgPicture.asset(
        Assets.icons.category,
      ),
    ),
  );
}

Widget _buildNavItem(
    {required BottomMenuItem item,
    required Function(int index) onSelectedItem,
    bool isActive = true,
    Function? changeBasket,
    bool? basketState}) {
  const selectedColor = AppColors.pink;
  const unselectedColor = AppColors.grey;

  return GestureDetector(
    onTap: () {
      if (item.index == 3) {
        changeBasket!();
      } else {
        onSelectedItem(item.index);
      }
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: AppProps.kBigMargin,
          height: AppProps.kBigMargin,
          child: SvgPicture.asset(
            item.assetName[0],
            colorFilter: ColorFilter.mode(
              isActive ? selectedColor : unselectedColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          item.title,
          style: TextStyle(
            color: isActive ? selectedColor : unselectedColor,
            fontSize: AppProps.kMediumMargin,
          ),
        ),
      ],
    ),
  );
}

class BottomMenuItem {
  List<String> assetName;
  int index;
  String title;

  BottomMenuItem({
    required this.assetName,
    required this.index,
    required this.title,
  });
}
