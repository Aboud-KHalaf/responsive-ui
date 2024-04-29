import 'package:flutter/material.dart';
import 'package:ui/models/user_info_model.dart';
import 'package:ui/utils/app_images.dart';
import 'package:ui/widgets/custom_user_info_widget.dart';

class LatestTransactionsListViewWidget extends StatelessWidget {
  const LatestTransactionsListViewWidget({
    super.key,
  });

  static List<UserInfo> users = [
    UserInfo(
      name: 'mohamed',
      email: 'mohamed.ali@gmail.com',
      image: Assets.imagesAvatar1,
    ),
    UserInfo(
      name: 'aboud',
      email: 'aboud.khalaf@gmail.com',
      image: Assets.imagesAvatar2,
    ),
    UserInfo(
      name: 'ali',
      email: 'ali.khaled@gmail.com',
      image: Assets.imagesAvatar3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: CustomUserInfoWidget(
              userInfo: users[index],
            ),
          );
        },
      ),
    );
  }
}
