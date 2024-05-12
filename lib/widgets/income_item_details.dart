import 'package:flutter/material.dart';
import 'package:ui/models/item_details_model.dart';
import 'package:ui/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({
    super.key,
    required this.itemDetailsModel,
  });

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 5,
        backgroundColor: itemDetailsModel.color,
      ),
      title: Text(
        itemDetailsModel.titel,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
