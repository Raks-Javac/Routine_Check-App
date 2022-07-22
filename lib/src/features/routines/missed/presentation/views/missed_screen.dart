import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../shared/widgets/tile/routinetile.dart';
import '../../../overview/presentation/widgets/widgets.dart';

class MissedScreen extends StatelessWidget {
   MissedScreen({Key? key}) : super(key: key);
  final List notes = [1, 2, 2, 4, 4];
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
                      routinIsEditable: false,
                      editFunction: () {},
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
