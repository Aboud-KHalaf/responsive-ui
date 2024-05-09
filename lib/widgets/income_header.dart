import 'package:flutter/cupertino.dart';
import 'package:ui/utils/app_styles.dart';
import 'package:ui/widgets/custom_drop_down_button_widget.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const CustomDropdownButtonWidget(),
      ],
    );
  }
}
