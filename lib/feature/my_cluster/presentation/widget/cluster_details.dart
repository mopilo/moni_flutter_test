import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test/core/util/assets.dart';
import 'package:mobile_test/core/util/dimension.dart';
import 'package:mobile_test/core/util/pallets.dart';
import 'package:mobile_test/feature/my_cluster/presentation/widget/custom_divider.dart';

class ClusterDetails extends StatelessWidget {
  const ClusterDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _rowHeader(text: "Cluster purse setting", icon: Assets.brand),
        Container(
          margin: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Frequency of contribution",
                    style: GoogleFonts.dmSans(
                        color: const Color(0xFF303437),
                        fontSize: 14.sp,
                        height: 2,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.h, bottom: 4.h),
                    child: Text(
                      "Monthly upfront",
                      style: GoogleFonts.dmSans(
                          color: DColors.dark,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Text(
                    "₦550,000,000",
                    style: GoogleFonts.dmSans(
                        color: DColors.dark,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Text(
                "Change",
                style: GoogleFonts.dmSans(
                    color: DColors.red,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          child: Text(
            "Your contribution is 8% of your eligible amount",
            style: GoogleFonts.dmSans(
                color: DColors.grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
        Dimension(height: 16.h),
        const CustomDivider(),
        Dimension(height: 16.h),
        _rowHeader(text: "Group invite Link/Code", icon: Assets.link),
        Dimension(height: 8.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          child: Text(
            "Use the link or code below to invite new member",
            style: GoogleFonts.dmSans(
                color: DColors.grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
        _rowColumn(
            topText: "Member invite code",
            topFontSize: 14.sp,
            topFontWeight: FontWeight.w400,
            belowText: "30DF38TG000",
            belowFontSize: 16.sp,
            belowFontWeight: FontWeight.w400,
            endText: "Get new code",
            endTextFontSize: 13.sp,
            color: DColors.red,
            height: 4.h),
        const CustomDivider(),
        Dimension(height: 16.h),
        _rowHeader(text: "Loan setting", icon: Assets.loanSettings),
        _rowColumn(
            topText: "Total loan collected by cluster",
            topFontSize: 12.sp,
            topFontWeight: FontWeight.w400,
            belowText: "₦550,000,000",
            belowFontSize: 14.sp,
            belowFontWeight: FontWeight.w500,
            endText: "",
            endTextFontSize: 14.sp,
            color: DColors.red,
            height: 8.h),
        _rowColumn(
            topText: "Repayment Day",
            topFontSize: 12.sp,
            topFontWeight: FontWeight.w400,
            belowText: "Every Monday",
            belowFontSize: 14.sp,
            belowFontWeight: FontWeight.w500,
            endText: "Get new code",
            endTextFontSize: 14.sp,
            color: DColors.red,
            height: 8.h),
        const CustomDivider(),
        Dimension(height: 16.h),
        _rowHeader(text: "Pending Join Request", icon: Assets.link),
        Dimension(height: 16.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          child: Text(
            "No pending cluster join request",
            style: GoogleFonts.dmSans(
                color: DColors.grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
        Dimension(height: 16.h),
        const CustomDivider(),
        Dimension(height: 16.h),
        _rowHeader(text: "Benefits earned", icon: Assets.money),
        _rowColumn(
            topText: "Total CH benefits earned",
            topFontSize: 14.sp,
            topFontWeight: FontWeight.w400,
            belowText: "₦550,000,000",
            belowFontSize: 14.sp,
            belowFontWeight: FontWeight.w700,
            endText: "",
            endTextFontSize: 14.sp,
            color: DColors.red,
            height: 8.h),
        _rowColumn(
            topText: "Available Benefits",
            topFontSize: 14.sp,
            topFontWeight: FontWeight.w400,
            belowText: "₦550,000,000",
            belowFontSize: 14.sp,
            belowFontWeight: FontWeight.w700,
            endText: "+₦5000 today",
            endTextFontSize: 13.sp,
            color: const Color(0xff23C16B),
            height: 8.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            children: [
              const Icon(Icons.remove_red_eye, color: DColors.red),
              Dimension(width: 8.w),
              Text(
                "View earning history",
                style: GoogleFonts.dmSans(
                    color: DColors.red,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _rowHeader({String? text, String? icon}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        children: [
          SizedBox(height: 16.h, width: 16.w, child: SvgPicture.asset(icon!)),
          Dimension(width: 8.w),
          Text(
            text!,
            style: GoogleFonts.dmSans(
                fontSize: 14.sp,
                color: DColors.dark,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

  Widget _rowColumn(
      {String? topText,
      double? topFontSize,
      FontWeight? topFontWeight,
      String? belowText,
      double? belowFontSize,
      FontWeight? belowFontWeight,
      String endText = "",
      double endTextFontSize = 0.0,
      Color? color,
      double? height}) {
    return Container(
      margin: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topText!,
                style: GoogleFonts.dmSans(
                    color: const Color(0xFF303437),
                    fontSize: topFontSize,
                    height: 2,
                    fontWeight: topFontWeight),
              ),
              Dimension(height: height),
              Text(
                belowText!,
                style: GoogleFonts.dmSans(
                    color: DColors.dark,
                    fontSize: belowFontSize,
                    fontWeight: belowFontWeight),
              ),
            ],
          ),
          Text(
            endText,
            style: GoogleFonts.dmSans(
                height: 2,
                color: color,
                fontSize: endTextFontSize,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
