import 'dart:developer';
import 'package:estate_project/src/features/home/domain/domain_models.dart';
import 'package:estate_project/src/shared/widgets/buttons/button.dart';
import 'package:estate_project/src/shared/widgets/reusable_app_bar/reusable_app_bar.dart';
import 'package:estate_project/src/shared/widgets/text_fields/normal_text_form_field.dart';
import 'package:estate_project/src/shared/widgets/text_fields/text_area_form_field.dart';
import 'package:estate_project/src/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../shared/res/res.dart';

class CreateScreen extends StatelessWidget {
  CreateScreen({Key? key}) : super(key: key);

  final TextEditingController createDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<RoutineCategory> routeData =
        ModalRoute.of(context)?.settings.arguments as List<RoutineCategory>;
    log("DATA FOUND IN ROUTE --->>>  ${routeData.length}");
    return GestureDetector(
      onTap: () => closeTextFieldFocus(context),
      child: Scaffold(
        appBar: ReusableAppBar(
          title: Text(
            "Create Routine",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: RoutineCheckAppColors.tertiary,
                ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const NormalFormFieldWidget(
                  label: "Routine title",
                ),
                addVerticalSpacing(20.h),
                const NormalFormFieldWidget(
                  label: "Routine Date",
                ),
                addVerticalSpacing(20.h),
                const NormalFormFieldWidget(
                  label: "Routine Time",
                ),
                addVerticalSpacing(20.h),
                TextAreaFormFieldWidget(
                    label: "Routine description",
                    controller: createDescription,
                    validator: (val) {
                      return "";
                    }),
                addVerticalSpacing(38.h),
                AppButton(
                  buttonText: "Create Routine",
                  enableButton: false,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
