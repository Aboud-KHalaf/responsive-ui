import 'package:flutter/material.dart';
import 'package:ui/models/user_info_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/utils/app_styles.dart';

class CustomUserInfoWidget extends StatelessWidget {
  const CustomUserInfoWidget({super.key, required this.userInfo});

  final UserInfo userInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white10,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfo.image),
        title: Text(
          userInfo.name,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userInfo.email,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
