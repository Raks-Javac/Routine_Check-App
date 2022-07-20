import 'package:estate_project/src/core/navigation/navigator.dart';
import 'package:estate_project/src/shared/res/res.dart';
import 'package:flutter/material.dart';
import 'package:estate_project/src/locator.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProviderMobileApp extends StatelessWidget {
  final List<SingleChildWidget> multiProvider;
  // ignore: use_key_in_widget_constructors
  const ProviderMobileApp(this.multiProvider);

  @override
  Widget build(BuildContext context) {
    //removed the splash_screen once this widget builds on screen
    FlutterNativeSplash.remove();
    return MultiProvider(
      providers: allProviders,
      child: ScreenUtilInit(
          designSize: const Size(428, 926),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              color: RoutineCheckAppColors.primary,
              onGenerateRoute: AppRouter.generateRoutes,
              navigatorKey: AppNavigator.key,
              initialRoute: splashScreen,
              title: StringsStore.kAppName,
              theme: RoutineCheckThemeData.lightTheme,
              darkTheme: RoutineCheckThemeData.darkTheme,
            );
          }),
    );
  }
}
