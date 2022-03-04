import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_test/core/util/app_theme.dart';
import 'package:mobile_test/feature/my_cluster/presentation/pages/my_cluster_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              darkTheme: appThemeDark,
              theme: appThemeLight,
              home: const MyCluster(),
            ));
  }
}
