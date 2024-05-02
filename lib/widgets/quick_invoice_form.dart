import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/widgets/custom_button.dart';
import 'package:ui/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Row(
        //   children: [
        //     Expanded(child: TitleTextField(title: 'title', hint: 'hint')),
        //     SizedBox(width: 8),
        //     Expanded(child: TitleTextField(title: 'title', hint: 'hint')),
        //   ],
        // ),
        // SizedBox(height: 12),
        // Row(
        //   children: [
        //     Expanded(child: TitleTextField(title: 'title', hint: 'hint')),
        //     SizedBox(width: 8),
        //     Expanded(child: TitleTextField(title: 'title', hint: 'hint')),
        //   ],
        // ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text: 'Get money',
              backgroundColor: Colors.white,
              textColor: Colors.cyan,
            )),
            SizedBox(width: 8),
            Expanded(
                child: CustomButton(
              text: 'Send Money',
            )),
          ],
        )
      ],
    );
  }
}
