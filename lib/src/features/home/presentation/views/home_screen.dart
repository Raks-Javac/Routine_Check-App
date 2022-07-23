import 'package:estate_project/src/core/navigation/navigator.dart';
import 'package:estate_project/src/features/home/domain/domain_models.dart';
import 'package:estate_project/src/features/home/presentation/providers/home_provider.dart';
import 'package:estate_project/src/features/home/presentation/widgets/widgets.dart';
import 'package:estate_project/src/shared/res/res.dart';
import 'package:estate_project/src/shared/widgets/reusable_app_bar/reusable_app_bar.dart';
import 'package:estate_project/src/utils/functions.dart';
import 'package:flutter/material.dart';

import '../../../../core/base/base_view/b_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: routineCategory.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeProvider>(
      vmBuilder: (context) => HomeProvider(context: context),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, HomeProvider homeViewModel) {
    return GestureDetector(
      onTap: () => closeTextFieldFocus(context),
      child: Scaffold(
          appBar: ReusableAppBar(
            shouldShowLeadingIcon: false,
            title: Text(
              "Home",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: RoutineCheckAppColors.tertiary,
                  ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // give the tab bar a height [can change hheight to preferred height]
                Container(
                  height: 30,
                  decoration: RoutineCheckAppDecorators.tabBackground,
                  child: TabBar(
                    controller: _tabController,
                    // give the indicator a decoration (color and border radius)
                    indicator:
                        RoutineCheckAppDecorators.tabHomeIndicatorDecoration,

                    labelColor: Colors.white,
                    unselectedLabelColor:
                        RoutineCheckAppColors.black.withOpacity(0.3),
                    tabs: [
                      ...routineCategory.map((e) {
                        return Tab(
                          text: e.categoryLabel,
                        );
                      }).toList(),
                    ],
                  ),
                ),
                // tab bar view here
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ...routineCategory.map((e) {
                        return e.categoryScreens!;
                      }).toList()
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: CreateTaskFloatingButton(
            onPressed: () async {
              // RoutineDb routineDbModel = RoutineDb(
              //     title: "First Routin",raksjavac
              
              //     description: "Would love to get started later",
              //     missed: false,
              //     done: true,
              //     routimeDate: DateTime.now(),
              //     routineTime: const TimeOfDay(minute: 20, hour: 20));
              // await homeViewModel.createARoutine(routineDbModel);
              AppNavigator.pushNamed(createScreen, arguments: routineCategory);
            },
          )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }
}
