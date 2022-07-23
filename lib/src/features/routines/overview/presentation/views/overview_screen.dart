import 'dart:developer';
import 'package:estate_project/src/core/database/routinedb.dart';
import 'package:estate_project/src/core/navigation/navigator.dart';
import 'package:estate_project/src/features/routines/overview/presentation/providers/overview_provider.dart';
import 'package:estate_project/src/features/routines/overview/presentation/widgets/widgets.dart';
import 'package:estate_project/src/shared/widgets/loaders/loading_screens.dart';
import 'package:estate_project/src/utils/date_time_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/base/base_view/b_view.dart';
import '../../../../../shared/widgets/tile/routinetile.dart';

class OverViewScreen extends StatelessWidget {
  const OverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<OverViewProvider>(
      vmBuilder: (context) => OverViewProvider(context: context),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, OverViewProvider overviewModel) {
    log("ref database list ->>  ${overviewModel.routineDbList.length}");
    return FutureBuilder<List<RoutineDb>>(
        future: overviewModel.getRoutineItems(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (overviewModel.routineDbList.isEmpty) {
              return const NoRoutinePlaceHolder();
            }
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < overviewModel.routineDbList.length; i++)
                      RoutineTile(
                        routinIsEditable: true,
                        editFunction: () {
                          AppNavigator.pushNamed(
                            editScreen,
                            arguments: overviewModel.routineDbList[i],
                          );
                        },
                        tileSubTitle:
                            DateTimeFormatter.formatDateTimeToNormalString(
                                overviewModel.routineDbList[i].routimeDate),
                        titleString: snapshot.data![i].title,
                      ),
                  ],
                ),
              ),
            );
//if the routine db list is empty

          } else {
            return const Loader();
          }
        });
  }
}
