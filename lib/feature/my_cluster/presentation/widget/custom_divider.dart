import 'package:flutter/material.dart';

import '../../../../core/util/pallets.dart';

class CustomDivider extends StatelessWidget {
  final Color? colors;

  const CustomDivider({Key? key, this.colors = DColors.lightGrey})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const Divider(
        color: DColors.lightGrey,
      ),
    );
  }
}
