import 'package:estate_project/src/shared/widgets/reusable_app_bar/reusable_app_bar.dart';
import 'package:estate_project/src/shared/widgets/text_fields/normal_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../../shared/res/res.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            children: const [
              NormalFormFieldWidget(
                label: "Title",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
