import 'package:estate_project/src/shared/widgets/text_fields/normal_text_form_field.dart';
import 'package:flutter/material.dart';

class OverViewScreen extends StatelessWidget {
  const OverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          NormalFormFieldWidget(),
        ],
      ),
    );
  }
}
