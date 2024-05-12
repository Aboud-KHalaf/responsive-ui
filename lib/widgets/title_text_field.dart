import 'package:flutter/material.dart';
import 'package:ui/utils/app_styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        TextFormField(
          decoration: InputDecoration(
            hintText: hint,
            fillColor: Colors.grey,
            filled: true,
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(
      color: Colors.cyan,
    ));
  }
}
