import 'package:estate_project/src/core/navigation/navigator.dart';
import 'package:estate_project/src/shared/res/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text? title;
  final bool shouldShowLeadingIcon;
  final bool shouldGoToSpecificRoute;
  final Widget? routeWidget;
  final VoidCallback? backfunction;
  final bool? shouldRunBackFunction;
  final String? routeName;

  const ReusableAppBar(
      {Key? key,
      this.title,
      this.shouldShowLeadingIcon = true,
      this.shouldGoToSpecificRoute = false,
      this.routeWidget,
      this.shouldRunBackFunction,
      this.backfunction,
      this.routeName = homeScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        statusBarColor: RoutineCheckAppColors.tertiary,
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: RoutineCheckAppColors.black,
        fontSize: 14.0.sp,
        fontWeight: FontWeight.bold,
      ),
      elevation: 4,
      backgroundColor: RoutineCheckAppColors.primary,
      title: title,
      leading: !shouldShowLeadingIcon
          ? Container()
          : IconButton(
              onPressed: () {
                if (shouldGoToSpecificRoute && routeWidget != null) {
                  AppNavigator.pushNamed(routeName!);
                }
                if (Navigator.of(context).canPop()) {
                  if (AppNavigator.canPop) AppNavigator.pop();
                }

                if (shouldGoToSpecificRoute && shouldRunBackFunction == true) {
                  backfunction!();
                }
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: RoutineCheckAppColors.tertiary,
              )),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
