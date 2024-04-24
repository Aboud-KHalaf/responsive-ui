import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/models/drawer_item_model.dart';
import 'package:ui/utils/app_styles.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
      ),
      title: Text(
        drawerItemModel.text,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
