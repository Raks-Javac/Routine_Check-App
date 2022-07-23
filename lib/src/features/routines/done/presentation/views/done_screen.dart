import 'dart:developer';

import 'package:estate_project/src/features/routines/done/presentation/providers/done_provider.dart';
import 'package:estate_project/src/features/routines/overview/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/base/base_view/b_view.dart';
import '../../../../../core/database/routinedb.dart';
import '../../../../../shared/widgets/loaders/loading_screens.dart';
import '../../../../../shared/widgets/tile/routinetile.dart';
import '../../../../../utils/date_time_formatter.dart';

class DoneSceen extends StatelessWidget {
  const DoneSceen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseView<DoneViewModel>(
      vmBuilder: (context) => DoneViewModel(context: context),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, DoneViewModel overviewModel) {
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
                        routinIsEditable: false,
                        editFunction: () {},
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
