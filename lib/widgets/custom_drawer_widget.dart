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
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomUserInfoWidget(
              userInfo: UserInfo(
                image: Assets.imagesAvatar3,
                name: 'Aboud Khalaf',
                email: 'aboud.khalaf.10@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const DrawerItemListViewWidget(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItemWidget(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.imagesSettings,
                    text: 'System Settings',
                  ),
                ),
                InActiveDrawerItemWidget(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.imagesLogout,
                    text: 'Log Out',
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
