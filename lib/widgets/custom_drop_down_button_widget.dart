import 'package:flutter/material.dart';
import 'package:ui/utils/app_styles.dart';

class CustomDropdownButtonWidget extends StatefulWidget {
  const CustomDropdownButtonWidget({
    super.key,
  });

  @override
  State<CustomDropdownButtonWidget> createState() =>
      _CustomDropdownButtonWidgetState();
}

class _CustomDropdownButtonWidgetState
    extends State<CustomDropdownButtonWidget> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "All", child: Text("All")),
      const DropdownMenuItem(value: "Annually", child: Text("Annually")),
      const DropdownMenuItem(value: "Monthly", child: Text("Monthly")),
      const DropdownMenuItem(value: "Weekly", child: Text("Weekly")),
      const DropdownMenuItem(value: "Daily", child: Text("Daily")),
    ];
    return menuItems;
  }

  String selectedDropdownMenuItem = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      style: AppStyles.styleMedium16(context).copyWith(
        color: Theme.of(context).primaryColor,
      ),
      borderRadius: BorderRadius.circular(8),
      dropdownColor: Colors.white,
      elevation: 10,
      padding: const EdgeInsets.only(right: 10),
      items: dropdownItems,
      value: selectedDropdownMenuItem,
      icon: const Icon(
        Icons.arrow_drop_down_rounded,
        color: Colors.cyan,
      ),
      onChanged: (value) {
        setState(() {
          selectedDropdownMenuItem = value!;
        });
      },
    );
  }
}
