import 'package:estate_project/src/core/navigation/navigator.dart';
import 'package:estate_project/src/features/routines/overview/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../shared/widgets/tile/routinetile.dart';

class OverViewScreen extends StatelessWidget {
  OverViewScreen({Key? key}) : super(key: key);
  final List notes = [1, 2, 2, 4, 4, 5, 5, 5, 3, 4, 5, 6, 6, 33];
  @override
  Widget build(BuildContext context) {
    return (notes.isNotEmpty)
        ? Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < notes.length; i++)
                    RoutineTile(
                      routinIsEditable: true,
                      editFunction: () {
                        AppNavigator.pushNamed(editScreen, arguments: notes[i]);
                      },
                      tileSubTitle: '',
                      titleString: '',
                    ),
                ],
              ),
            ),
          )
        : const NoRoutinePlaceHolder();
  }
}
