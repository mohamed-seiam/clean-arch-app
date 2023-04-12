import 'package:clean_arch_app/core/utilis/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}


class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
