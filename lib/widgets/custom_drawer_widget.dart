import 'package:flutter/material.dart';
import 'package:ui/models/drawer_item_model.dart';
import 'package:ui/models/user_info_model.dart';
import 'package:ui/utils/app_images.dart';
import 'package:ui/widgets/custom_user_info_widget.dart';
import 'package:ui/widgets/drawer_item_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, text: 'My Dashbord'),
    DrawerItemModel(image: Assets.imagesGallery, text: 'My Dashbord'),
    DrawerItemModel(image: Assets.imagesIncome, text: 'My Dashbord'),
    DrawerItemModel(image: Assets.imagesLogout, text: 'My Dashbord'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomUserInfoWidget(
          userInfo: UserInfo(
            image: Assets.imagesAvatar3,
            name: 'Aboud Khalaf',
            email: 'aboud.khalaf.10@gmail.com',
          ),
        ),
        const SizedBox(height: 8),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return DrawerItemWidget(drawerItemModel: items[index]);
          },
        )
      ],
    );
  }
}
