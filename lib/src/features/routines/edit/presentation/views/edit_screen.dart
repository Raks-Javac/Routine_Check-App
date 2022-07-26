import 'package:estate_project/src/core/database/routinedb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../shared/res/res.dart';
import '../../../../../shared/widgets/buttons/button.dart';
import '../../../../../shared/widgets/reusable_app_bar/reusable_app_bar.dart';
import '../../../../../shared/widgets/text_fields/normal_text_form_field.dart';
import '../../../../../shared/widgets/text_fields/text_area_form_field.dart';
import '../../../../../utils/functions.dart';

class EditScreenPerRoutine extends StatelessWidget {
  EditScreenPerRoutine({Key? key}) : super(key: key);

  final TextEditingController editTitle = TextEditingController();
  final TextEditingController editDescription = TextEditingController();
  final TextEditingController editDate = TextEditingController();
  final TextEditingController editTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final routeData = ModalRoute.of(context)?.settings.arguments as RoutineDb;
    editTitle.text = routeData.title;
    editDescription.text = routeData.description;
    editTime.text =
        "${routeData.routineTime.hour}:${routeData.routineTime.minute}";
    editDate.text = routeData.routimeDate.toString();
    return GestureDetector(
      onTap: () => closeTextFieldFocus(context),
      child: Scaffold(
        appBar: ReusableAppBar(
          title: Text(
            "Edit Routine",
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
                NormalFormFieldWidget(
                  label: "Routine title",
                  textEditingController: editTitle,
                ),
                addVerticalSpacing(20.h),
                NormalFormFieldWidget(
                  label: "Routine Date",
                  textEditingController: editDate,
                ),
                addVerticalSpacing(20.h),
                NormalFormFieldWidget(
                  label: "Routine Time",
                  textEditingController: editTime,
                ),
                addVerticalSpacing(20.h),
                TextAreaFormFieldWidget(
                    label: "Routine description",
                    controller: editDescription,
                    validator: (val) {
                      return "";
                    }),
                addVerticalSpacing(38.h),
                AppButton(
                  buttonText: "Edit Routine",
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
