import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test/core/util/assets.dart';
import 'package:mobile_test/core/util/dimension.dart';

import '../../../../core/environment/evn.dart';
import '../../../../core/util/pallets.dart';
import '../../data/model/cluster_response.dart';
import 'custom_divider.dart';

class Members extends StatelessWidget {
  final Data? data;
  const Members({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        /// START OF OVERDUE LOAN
        _memberTitle("Overdue Loans"),
        Dimension(height: 16.h),
        const CustomDivider(colors: DColors.lightDividerColor),
        _load("Florence Tanika", "3 days over due", "₦10,555,000 Late loan",
            DColors.darkRed),

        /// END OF OVERDUE LOAN
        ///
        /// START OF DUE LOAN
        Dimension(height: 16.h),
        _memberTitle("Due Today"),
        Dimension(height: 16.h),
        const CustomDivider(colors: DColors.lightDividerColor),
        _load("Eze Tarka", "3 days over due", "₦10,555,000 Late loan",
            DColors.brown),

        _load("Tiamiyu Adzana", "3 days over due", "₦10,555,000 Late loan",
            DColors.brown),
        // const CustomDivider(colors: DColors.lightDividerColor),

        /// END OF DUE LOAN
        ///
        /// START OF ACTIVE LOANS
        Dimension(height: 16.h),

        _memberTitle("Active Loan"),
        Dimension(height: 16.h),

        const CustomDivider(colors: DColors.lightDividerColor),

        Column(
          children: [
            ...data!.activeAgents!
                .map(
                  (agent) => _load(
                      agent.agent!.firstName! + " " + agent.agent!.lastName!,
                      "${(agent.agent!.recentLoan == null ? 0 : agent.agent!.recentLoan!.agentLoan!.daysPastDue.toString())} days to due date",
                      "₦${Env().formatter.format(agent.agent!.recentLoan!.loanAmount)} Late loan",
                      DColors.darkGreen),
                )
                .toList(),
          ],
        ),
        Dimension(height: 16.h),
        _memberTitle("Inactive Loan"),
        Dimension(height: 16.h),
        const CustomDivider(colors: DColors.lightDividerColor),

        Column(
          children: [
            ...data!.inactiveAgents!
                .map(
                  (agent) => _load(
                      agent.agent!.firstName! + " " + agent.agent!.lastName!,
                      "${(agent.agent!.recentLoan == null ? 0 : agent.agent!.recentLoan!.agentLoan!.daysPastDue.toString())} days to due date",
                      "₦${agent.agent!.recentLoan == null ? 0 : Env().formatter.format(agent.agent!.recentLoan?.loanAmount)} Late loan",
                      DColors.darkGreen),
                )
                .toList(),
          ],
        ),
      ],
    );
  }

  Widget _memberTitle(title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
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
      margin: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 0.h),
      child: Column(
        children: [
          Row(
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
                        color: color,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700),
                  )
                ],
              )
            ],
          ),
          Dimension(height: 16.h),
          const Divider(
            color: DColors.lightGrey,
          )
        ],
      ),
    );
  }
}
