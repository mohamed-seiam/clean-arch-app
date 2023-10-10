import 'package:clean_arch_app/constant.dart';
import 'package:clean_arch_app/core/utilis/app_router.dart';
import 'package:clean_arch_app/core/utilis/functions/setup_service_locator.dart';
import 'package:clean_arch_app/features/home/data/repos/home_rep_implement.dart';
import 'package:clean_arch_app/features/home/domain/entites/book_entity.dart';
import 'package:clean_arch_app/features/home/domain/use_cases/fetch_featured_books_use_cases.dart';
import 'package:clean_arch_app/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:clean_arch_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/utilis/bloc_observable.dart';
import 'features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
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
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) {
                  return FeaturedBooksCubit(
                    FetchFeaturedBooksUseCase(
                      getIt.get<HomeRepoImplementation>(),
                    ),
                  );
                },
              ),
              BlocProvider(
                create: (context) {
                  return NewestBooksCubit(
                    FetchNewestBooksUseCase(
                      getIt.get<HomeRepoImplementation>(),
                    ),
                  );
                },
              ),
            ],
            child: MaterialApp.router(
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: kPrimaryColor,
                textTheme:
                    GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
                useMaterial3: true,
              ),
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
            ),
          );
        });
  }
}
