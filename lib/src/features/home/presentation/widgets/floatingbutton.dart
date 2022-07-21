import 'package:flutter/material.dart';

import '../../../../shared/res/res.dart';

class CreateTaskFloatingButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const CreateTaskFloatingButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: RoutineCheckAppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        "Create Routine",
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: RoutineCheckAppColors.tertiary,
              fontSize: 13,
              fontWeight: FontWeight.w100,
            ),
      ),
    );
  }
}
