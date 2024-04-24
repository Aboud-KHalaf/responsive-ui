import 'package:flutter/material.dart';
import 'package:ui/models/drawer_item_model.dart';
import 'package:ui/models/user_info_model.dart';
import 'package:ui/utils/app_images.dart';
import 'package:ui/widgets/custom_user_info_widget.dart';
import 'package:ui/widgets/drawer_item_widget.dart';

class CustomDrawerWidget extends StatefulWidget {
  const CustomDrawerWidget({super.key});

  @override
  State<CustomDrawerWidget> createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
  List<DrawerItemModel> items = [
    const DrawerItemModel(image: Assets.imagesDashboard, text: 'My Dashbord'),
    const DrawerItemModel(image: Assets.imagesGallery, text: 'My Dashbord'),
    const DrawerItemModel(
        image: Assets.imagesMyTransctions, text: 'My Dashbord'),
    const DrawerItemModel(image: Assets.imagesLogout, text: 'My Dashbord'),
  ];
  int selectedIndex = 0;
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
        ListView.builder(
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
              child: DrawerItemWidget(
                isSelected: (index == selectedIndex),
                drawerItemModel: items[index],
              ),
            );
          },
        )
      ],
    );
  }
}
