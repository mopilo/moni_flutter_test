import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final Function click;
  final Color color;
  final Color textColor;
  const ButtonWidget(
      {Key? key,
      this.text,
      required this.click,
      this.textColor = Colors.white,
      this.color = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 109.w,
      child: TextButton(
          onPressed: () {
            click();
          },
          style: ButtonStyle(
              alignment: Alignment.center,
              backgroundColor: MaterialStateProperty.all(color),
              overlayColor: MaterialStateProperty.all(Colors.green),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ))),
          child: Center(
            child: Text(
              text!,
              style: GoogleFonts.dmSans(
                  color: textColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
          )),
    );
  }
}
