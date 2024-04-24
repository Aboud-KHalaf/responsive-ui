import 'package:flutter/material.dart';
import 'package:ui/models/drawer_item_model.dart';
import 'package:ui/models/user_info_model.dart';
import 'package:ui/utils/app_images.dart';
import 'package:ui/widgets/custom_user_info_widget.dart';
import 'package:ui/widgets/drawer_items_list_view_widget.dart';
import 'package:ui/widgets/in_active_drawer_item_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomUserInfoWidget(
          userInfo: UserInfo(
            image: Assets.imagesAvatar3,
            name: 'Aboud Khalaf',
            email: 'aboud.khalaf.10@gmail.com',
          ),
        ),
        const SizedBox(height: 8),
        const DrawerItemListViewWidget(),
        const Expanded(child: SizedBox()),
        const InActiveDrawerItemWidget(
          drawerItemModel: DrawerItemModel(
            image: Assets.imagesSettings,
            text: 'System Settings',
          ),
        ),
        const InActiveDrawerItemWidget(
          drawerItemModel: DrawerItemModel(
            image: Assets.imagesLogout,
            text: 'Log Out',
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
