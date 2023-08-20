import 'package:clean_arch_app/constant.dart';
import 'package:clean_arch_app/core/utilis/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              useMaterial3: true,
            ),
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
