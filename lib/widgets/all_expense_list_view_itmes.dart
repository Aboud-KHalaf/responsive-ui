import 'package:flutter/material.dart';

class AllExpenseListViewWidget extends StatelessWidget {
  const AllExpenseListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 50,
            height: 50,
            color: Colors.cyan,
          ),
        );
      },
    );
  }
}
