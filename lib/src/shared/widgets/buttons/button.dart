import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/res.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonText;
  final bool enableButton;
  const AppButton(
      {Key? key,
      this.onPressed,
      required this.buttonText,
      required this.enableButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return MaterialButton(
      minWidth: mq.width,
      height: 50.h,
      color: RoutineCheckAppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
      ),
      disabledColor: RoutineCheckAppColors.primary60,
      onPressed: enableButton ? onPressed : null,
      child: Text(
        buttonText,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: RoutineCheckAppColors.tertiary,
              fontSize: 15.sp,
              fontWeight: FontWeight.w100,
            ),
      ),
    );
  }
}
