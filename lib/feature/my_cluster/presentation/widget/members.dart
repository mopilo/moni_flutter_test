import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test/core/util/assets.dart';
import 'package:mobile_test/core/util/dimension.dart';

import '../../../../core/util/pallets.dart';
import 'custom_divider.dart';

class Members extends StatelessWidget {
  const Members({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _memberTitle("Overdue Loans"),
        Dimension(height: 16.h),
        const CustomDivider(colors: DColors.lightDividerColor),
        _load("Florence Tanika", "3 days over due", "₦10,555,000 Late loan",
            DColors.darkRed),
        const CustomDivider(colors: DColors.lightDividerColor),
        _memberTitle("Due Today"),
        _load("Florence Tanika", "3 days over due", "₦10,555,000 Late loan",
            DColors.brown),
        _memberTitle("Active Loan"),
        _load("Florence Tanika", "3 days over due", "₦10,555,000 Late loan",
            DColors.darkGreen),
        _memberTitle("Inactive Loan"),
        _load(
            "Florence Tanika", "", "₦10,555,000 Late loan", DColors.darkGreen),
      ],
    );
  }

  Widget _memberTitle(title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: GoogleFonts.dmSans(
                  fontSize: 13.16.sp,
                  fontWeight: FontWeight.w400,
                  color: DColors.darkTextColor)),
          const Icon(Icons.remove, color: Colors.black38)
        ],
      ),
    );
  }

  Widget _load(name, days, amount, color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(Assets.avatar),
          ),
          Dimension(width: 18.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: GoogleFonts.dmSans(
                        height: 1.2,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: DColors.darkTextColor),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    child: const Icon(
                      Icons.lens,
                      size: 4,
                      color: Color(0xffC4C4C4),
                    ),
                  ),
                  Text(
                    days,
                    style: GoogleFonts.dmSans(
                        color: color,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Dimension(height: 4.h),
              Text(
                amount,
                style: GoogleFonts.dmSans(
                    color: color, fontSize: 12.sp, fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }
}
