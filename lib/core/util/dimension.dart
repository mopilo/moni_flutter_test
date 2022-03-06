import 'package:flutter/material.dart';

class Dimension extends StatelessWidget {
  final double? width, height;

  const Dimension({Key? key, this.width, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 0,
      width: width ?? 0,
    );
  }
}
