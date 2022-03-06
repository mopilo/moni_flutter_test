import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test/feature/my_cluster/data/model/cluster_response.dart';
import 'package:mobile_test/feature/my_cluster/presentation/bloc/my_cluster_bloc/my_cluster_bloc.dart';
import 'package:mobile_test/feature/my_cluster/presentation/widget/cluster_details.dart';

import '../../../../core/injection/injection_container.dart';
import '../../../../core/util/assets.dart';
import '../../../../core/util/button_widget.dart';
import '../../../../core/util/dimension.dart';
import '../../../../core/util/pallets.dart';
import '../widget/members.dart';

class MyCluster extends StatefulWidget {
  const MyCluster({Key? key}) : super(key: key);

  @override
  State<MyCluster> createState() => _MyClusterState();
}

class _MyClusterState extends State<MyCluster> {
  late MyClusterBloc _bloc;
  bool loading = false;
  Data? data;
  @override
  void initState() {
    super.initState();
    _bloc = MyClusterBloc(inject());
    _bloc.add(GetCluster());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider<MyClusterBloc>(
            create: (context) => _bloc,
            child: BlocConsumer<MyClusterBloc, MyClusterState>(
              listener: (BuildContext context, state) {
                if (state is MyClusterSuccessful) {
                  loading = false;
                  data = state.myClusterResponse.data;
                }
                if (state is MyClusterLoading || state is MyClusterInitial) {
                  loading = true;
                }
              },
              builder: (BuildContext context, state) => loading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView(
                      // physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          height: 305.h,
                          decoration: const BoxDecoration(
                            color: Colors.black87,
                            image: DecorationImage(
                                image: AssetImage(Assets.headerBackground),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            children: [
                              _header(),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(data!.clusterName!,
                                            style: GoogleFonts.dmSans(
                                                color: Colors.white,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700)),
                                        Container(
                                          width: 158.w,
                                          height: 20,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 4.h),
                                          decoration: BoxDecoration(
                                              color: DColors.black400,
                                              borderRadius:
                                                  BorderRadius.circular(30.r)),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 0.w, vertical: 0.h),
                                          child: RichText(
                                              text: TextSpan(
                                                  text: 'Repayment rate:',
                                                  style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: DColors.black500,
                                                      fontSize: 14.sp),
                                                  children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        ' ${(data!.clusterRepaymentRate! * 100).toInt().toString()}%',
                                                    style: GoogleFonts.dmSans(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: DColors.yellow,
                                                        fontSize: 14.sp))
                                              ])),
                                        ),
                                        Container(
                                          width: 218.w,
                                          height: 20,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: DColors.black400,
                                              borderRadius:
                                                  BorderRadius.circular(30.r)),
                                          child: RichText(
                                              text: TextSpan(
                                                  text: 'Repayment Day:',
                                                  style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: DColors.black500,
                                                      fontSize: 14.sp),
                                                  children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        ' Every ${data?.clusterRepaymentDay}',
                                                    style: GoogleFonts.dmSans(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            DColors.lightGreen,
                                                        fontSize: 14.sp))
                                              ])),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    SizedBox(
                                        width: 48.w,
                                        height: 48.h,
                                        child: Image.asset(Assets.avatar))
                                  ],
                                ),
                              ),
                              SizedBox(height: 16.h),
                              _divider(),
                              SizedBox(height: 11.h),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cluster purse balance",
                                          style: GoogleFonts.dmSans(
                                              color: Colors.white,
                                              fontSize: 9.sp),
                                        ),
                                        SizedBox(height: 4.h),
                                        SizedBox(
                                          height: 24.h,
                                          child: Text(
                                              "₦${data?.clusterPurseBalance.toString()}",
                                              style: GoogleFonts.dmSans(
                                                  color: Colors.white,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w700)),
                                        ),
                                        Text(
                                            "+₦${data?.totalInterestEarned.toString()} interest today",
                                            style: GoogleFonts.dmSans(
                                                color: DColors.lightGreen,
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w700))
                                      ],
                                    ),
                                    const Spacer(),
                                    ButtonWidget(
                                        click: () {},
                                        text: "View Purse",
                                        color: DColors.red)
                                  ],
                                ),
                              ),
                              SizedBox(height: 11.h),
                              _divider(),
                              SizedBox(height: 8.h),
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: _row(
                                      "Total interest earned",
                                      "₦${data?.totalInterestEarned.toString()}",
                                      DColors.yellow)),
                              Dimension(height: 6.h),
                              _divider(),
                              Dimension(height: 6.h),
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: _row(
                                      "Total owed by members",
                                      "₦${data?.totalOwedByMembers.toString()}",
                                      DColors.white)),
                            ],
                          ),
                        ),
                        DefaultTabController(
                            length: 2,
                            child: SizedBox(
                              height: 600,
                              child: Column(children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: DColors.lightYellow),
                                  child: TabBar(
                                    tabs: [
                                      _tab("Members (9)"),
                                      _tab("Cluster Details"),
                                    ],
                                  ),
                                ),
                                // SizedBox(height: 24.h),
                                Flexible(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 24.h),
                                    child: const TabBarView(
                                      children: [Members(), ClusterDetails()],
                                    ),
                                  ),
                                )
                              ]),
                            ))
                      ],
                    ),
            )));
  }

  Widget _row(first, last, color) {
    return Row(
      children: [
        Text(
          first,
          style: GoogleFonts.dmSans(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: DColors.black500),
        ),
        const Spacer(),
        Text(
          last,
          style: GoogleFonts.dmSans(
              fontSize: 12.sp, fontWeight: FontWeight.w400, color: color),
        )
      ],
    );
  }

  Widget _header() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: const Icon(Icons.arrow_back),
      centerTitle: true,
      title: Text(
        "My cluster",
        style: GoogleFonts.dmSans(
            color: Colors.white, fontSize: 17.sp, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: const Divider(
        color: DColors.lightGrey,
      ),
    );
  }

  Widget _tab(text) {
    return Tab(
      child: Text(
        text,
        style: GoogleFonts.dmSans(
            color: DColors.red, fontSize: 14.sp, fontWeight: FontWeight.w700),
      ),
    );
  }
}
