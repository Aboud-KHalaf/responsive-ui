import 'package:flutter/material.dart';
import 'package:ui/models/drawer_item_model.dart';
import 'package:ui/utils/app_images.dart';
import 'package:ui/widgets/active_drawer_item_widget.dart';
import 'package:ui/widgets/in_active_drawer_item_widget.dart';

class DrawerItemListViewWidget extends StatefulWidget {
  const DrawerItemListViewWidget({super.key});

  @override
  State<DrawerItemListViewWidget> createState() =>
      _DrawerItemListViewWidgetState();
}

class _DrawerItemListViewWidgetState extends State<DrawerItemListViewWidget> {
  List<DrawerItemModel> items = [
    const DrawerItemModel(
      image: Assets.imagesDashboard,
      text: 'My Dashbord',
    ),
    const DrawerItemModel(
      image: Assets.imagesMyTransctions,
      text: 'My trancactions',
    ),
    const DrawerItemModel(
      image: Assets.imagesStatistics,
      text: 'statistics',
    ),
    const DrawerItemModel(
      image: Assets.imagesWalletAccount,
      text: 'Wallet Account',
    ),
    const DrawerItemModel(
      image: Assets.imagesMyInvestments,
      text: 'My Investments',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: (selectedIndex == index)
              ? ActiveDrawerItemWidget(
                  drawerItemModel: items[index],
                )
              : InActiveDrawerItemWidget(
                  drawerItemModel: items[index],
                ),
        );
      },
    );
  }
}
