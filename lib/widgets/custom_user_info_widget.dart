import 'package:flutter/material.dart';
import 'package:ui/models/user_info_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/utils/app_styles.dart';

class CustomUserInfoWidget extends StatelessWidget {
  const CustomUserInfoWidget({super.key, required this.userInfo});

  final UserInfo userInfo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(userInfo.image),
      title: Text(
        userInfo.titel,
        style: AppStyles.styleSemiBold16(context),
      ),
      subtitle: Text(
        userInfo.email,
        style: AppStyles.styleRegular12(context),
      ),
    );
  }
}
