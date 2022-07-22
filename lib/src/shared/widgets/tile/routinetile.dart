import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../res/res.dart';

class RoutineTile extends StatelessWidget {
  final bool routinIsEditable;
  final String titleString;
  final String tileSubTitle;
  final VoidCallback editFunction;
  const RoutineTile(
      {Key? key, required this.routinIsEditable, required this.editFunction, required this.titleString, required this.tileSubTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        color: RoutineCheckAppColors.tertiary,
        child: ListTile(
          leading: const CircleAvatar(
            child: Text("CK"),
          ),
          title: Text(
            "Mop the home",
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontSize: 17.sp),
          ),
          subtitle: Text(
            DateTime.now().toLocal().toString(),
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontSize: 13.sp),
          ),
          trailing: routinIsEditable
              ? TextButton(onPressed: editFunction, child: const Text("Edit"))
              : null,
        ),
      ),
    );
  }
}
