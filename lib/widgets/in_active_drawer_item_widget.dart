import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/models/drawer_item_model.dart';
import 'package:ui/utils/app_styles.dart';

class InActiveDrawerItemWidget extends StatelessWidget {
  const InActiveDrawerItemWidget({
    super.key,
    required this.drawerItemModel,
  });

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
